; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_fileno.c_pfs_fileno_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_fileno.c_pfs_fileno_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_info = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"pfs_fileno\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@NO_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfs_fileno_init(%struct.pfs_info* %0) #0 {
  %2 = alloca %struct.pfs_info*, align 8
  store %struct.pfs_info* %0, %struct.pfs_info** %2, align 8
  %3 = load %struct.pfs_info*, %struct.pfs_info** %2, align 8
  %4 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %3, i32 0, i32 0
  %5 = load i32, i32* @MTX_DEF, align 4
  %6 = call i32 @mtx_init(i32* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %5)
  %7 = load i32, i32* @INT_MAX, align 4
  %8 = load i32, i32* @NO_PID, align 4
  %9 = sdiv i32 %7, %8
  %10 = load %struct.pfs_info*, %struct.pfs_info** %2, align 8
  %11 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %10, i32 0, i32 0
  %12 = call i32 @new_unrhdr(i32 3, i32 %9, i32* %11)
  %13 = load %struct.pfs_info*, %struct.pfs_info** %2, align 8
  %14 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @new_unrhdr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
