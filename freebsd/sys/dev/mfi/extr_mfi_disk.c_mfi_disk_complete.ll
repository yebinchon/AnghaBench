; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, i64, i64, %struct.mfi_frame_header*, %struct.TYPE_2__* }
%struct.mfi_frame_header = type { i32 }
%struct.TYPE_2__ = type { %struct.mfi_disk* }
%struct.mfi_disk = type { i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"hard error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_disk_complete(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.mfi_disk*, align 8
  %4 = alloca %struct.mfi_frame_header*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mfi_disk*, %struct.mfi_disk** %8, align 8
  store %struct.mfi_disk* %9, %struct.mfi_disk** %3, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 4
  %12 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %11, align 8
  store %struct.mfi_frame_header* %12, %struct.mfi_frame_header** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BIO_ERROR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i64, i64* @EIO, align 8
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %19
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = call i32 @disk_err(%struct.bio* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1, i32 1)
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = call i32 @biodone(%struct.bio* %40)
  ret void
}

declare dso_local i32 @disk_err(%struct.bio*, i8*, i32, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
