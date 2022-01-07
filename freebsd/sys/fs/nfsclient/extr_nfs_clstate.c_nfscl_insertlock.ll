; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_insertlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_insertlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nfscllockowner = type { i32 }
%struct.nfscllock = type { i32 }

@nfslo_list = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfscllockowner*, %struct.nfscllock*, %struct.nfscllock*, i32)* @nfscl_insertlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfscl_insertlock(%struct.nfscllockowner* %0, %struct.nfscllock* %1, %struct.nfscllock* %2, i32 %3) #0 {
  %5 = alloca %struct.nfscllockowner*, align 8
  %6 = alloca %struct.nfscllock*, align 8
  %7 = alloca %struct.nfscllock*, align 8
  %8 = alloca i32, align 4
  store %struct.nfscllockowner* %0, %struct.nfscllockowner** %5, align 8
  store %struct.nfscllock* %1, %struct.nfscllock** %6, align 8
  store %struct.nfscllock* %2, %struct.nfscllock** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfscllock*, %struct.nfscllock** %7, align 8
  %10 = bitcast %struct.nfscllock* %9 to %struct.nfscllockowner*
  %11 = load %struct.nfscllockowner*, %struct.nfscllockowner** %5, align 8
  %12 = icmp eq %struct.nfscllockowner* %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.nfscllockowner*, %struct.nfscllockowner** %5, align 8
  %15 = getelementptr inbounds %struct.nfscllockowner, %struct.nfscllockowner* %14, i32 0, i32 0
  %16 = load %struct.nfscllock*, %struct.nfscllock** %6, align 8
  %17 = load i32, i32* @nfslo_list, align 4
  %18 = call i32 @LIST_INSERT_HEAD(i32* %15, %struct.nfscllock* %16, i32 %17)
  br label %24

19:                                               ; preds = %4
  %20 = load %struct.nfscllock*, %struct.nfscllock** %7, align 8
  %21 = load %struct.nfscllock*, %struct.nfscllock** %6, align 8
  %22 = load i32, i32* @nfslo_list, align 4
  %23 = call i32 @LIST_INSERT_AFTER(%struct.nfscllock* %20, %struct.nfscllock* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 1), align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 1), align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfscllock*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.nfscllock*, %struct.nfscllock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
