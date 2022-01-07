; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_info = type { i8*, {}*, i32* }
%struct.vfsconf = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s unregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfs_uninit(%struct.pfs_info* %0, %struct.vfsconf* %1) #0 {
  %3 = alloca %struct.pfs_info*, align 8
  %4 = alloca %struct.vfsconf*, align 8
  %5 = alloca i32, align 4
  store %struct.pfs_info* %0, %struct.pfs_info** %3, align 8
  store %struct.vfsconf* %1, %struct.vfsconf** %4, align 8
  %6 = load %struct.pfs_info*, %struct.pfs_info** %3, align 8
  %7 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @pfs_destroy(i32* %8)
  %10 = load %struct.pfs_info*, %struct.pfs_info** %3, align 8
  %11 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load %struct.pfs_info*, %struct.pfs_info** %3, align 8
  %13 = call i32 @pfs_fileno_uninit(%struct.pfs_info* %12)
  %14 = load i64, i64* @bootverbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.pfs_info*, %struct.pfs_info** %3, align 8
  %18 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.pfs_info*, %struct.pfs_info** %3, align 8
  %23 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %22, i32 0, i32 1
  %24 = bitcast {}** %23 to i32 (%struct.pfs_info*, %struct.vfsconf*)**
  %25 = load i32 (%struct.pfs_info*, %struct.vfsconf*)*, i32 (%struct.pfs_info*, %struct.vfsconf*)** %24, align 8
  %26 = load %struct.pfs_info*, %struct.pfs_info** %3, align 8
  %27 = load %struct.vfsconf*, %struct.vfsconf** %4, align 8
  %28 = call i32 %25(%struct.pfs_info* %26, %struct.vfsconf* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @pfs_destroy(i32*) #1

declare dso_local i32 @pfs_fileno_uninit(%struct.pfs_info*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
