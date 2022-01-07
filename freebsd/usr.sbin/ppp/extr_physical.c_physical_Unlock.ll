; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@PHYS_DIRECT = common dso_local global i64 0, align 8
@LogALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: Can't uu_unlock %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*)* @physical_Unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @physical_Unlock(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  store %struct.physical* %0, %struct.physical** %2, align 8
  %3 = load %struct.physical*, %struct.physical** %2, align 8
  %4 = getelementptr inbounds %struct.physical, %struct.physical* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 47
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.physical*, %struct.physical** %2, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PHYS_DIRECT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.physical*, %struct.physical** %2, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ID0uu_unlock(i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load i32, i32* @LogALERT, align 4
  %25 = load %struct.physical*, %struct.physical** %2, align 8
  %26 = getelementptr inbounds %struct.physical, %struct.physical* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.physical*, %struct.physical** %2, align 8
  %30 = getelementptr inbounds %struct.physical, %struct.physical* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @log_Printf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %23, %16, %10, %1
  ret void
}

declare dso_local i32 @ID0uu_unlock(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
