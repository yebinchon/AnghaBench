; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { i64 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vmspace_free() called\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"vmspace_free: attempt to free already freed vmspace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmspace_free(%struct.vmspace* %0) #0 {
  %2 = alloca %struct.vmspace*, align 8
  store %struct.vmspace* %0, %struct.vmspace** %2, align 8
  %3 = load i32, i32* @WARN_GIANTOK, align 4
  %4 = load i32, i32* @WARN_SLEEPOK, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @WITNESS_WARN(i32 %5, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %8 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %15 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %14, i32 0, i32 0
  %16 = call i32 @atomic_fetchadd_int(i64* %15, i32 -1)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %20 = call i32 @vmspace_dofree(%struct.vmspace* %19)
  br label %21

21:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @atomic_fetchadd_int(i64*, i32) #1

declare dso_local i32 @vmspace_dofree(%struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
