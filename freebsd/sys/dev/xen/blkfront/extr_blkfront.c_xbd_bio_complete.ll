; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_bio_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_bio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32 }
%struct.xbd_command = type { i64, %struct.bio* }
%struct.bio = type { i32, i64, i32 }

@BLKIF_RSP_OKAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"disk error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" status: %x\0A\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_softc*, %struct.xbd_command*)* @xbd_bio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_bio_complete(%struct.xbd_softc* %0, %struct.xbd_command* %1) #0 {
  %3 = alloca %struct.xbd_softc*, align 8
  %4 = alloca %struct.xbd_command*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.xbd_softc* %0, %struct.xbd_softc** %3, align 8
  store %struct.xbd_command* %1, %struct.xbd_command** %4, align 8
  %6 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %7 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %6, i32 0, i32 1
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %10 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BLKIF_RSP_OKAY, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @__predict_false(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = call i32 @disk_err(%struct.bio* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1, i32 0)
  %20 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %21 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @BIO_ERROR, align 4
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %17, %2
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BIO_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %43

40:                                               ; preds = %29
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %45 = call i32 @xbd_free_command(%struct.xbd_command* %44)
  %46 = load %struct.bio*, %struct.bio** %5, align 8
  %47 = call i32 @biodone(%struct.bio* %46)
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @disk_err(%struct.bio*, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @xbd_free_command(%struct.xbd_command*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
