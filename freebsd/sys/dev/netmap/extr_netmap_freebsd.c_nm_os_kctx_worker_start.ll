; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_kctx_worker_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_kctx_worker_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.nm_kctx = type { i32, i32*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nm_kthread start failed err %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RFNOWAIT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@nm_kctx_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nm_os_kctx_worker_start(%struct.nm_kctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nm_kctx*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  store %struct.nm_kctx* %0, %struct.nm_kctx** %3, align 8
  store %struct.proc* null, %struct.proc** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %6, i32* %2, align 4
  br label %13

7:                                                ; No predecessors!
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nm_kctx*, %struct.nm_kctx** %3, align 8
  %11 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @nm_prerr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
