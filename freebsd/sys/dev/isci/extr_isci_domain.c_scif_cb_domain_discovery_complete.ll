; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_discovery_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_discovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32 }
%struct.ISCI_DOMAIN = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"scif_cb_domain_discovery_complete status = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_domain_discovery_complete(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SCI_SUCCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @sci_object_get_association(i32 %14)
  %16 = inttoptr i64 %15 to %struct.ISCI_CONTROLLER*
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @sci_object_get_association(i32 %17)
  %19 = inttoptr i64 %18 to %struct.ISCI_DOMAIN*
  %20 = call i32 @isci_controller_domain_discovery_complete(%struct.ISCI_CONTROLLER* %16, %struct.ISCI_DOMAIN* %19)
  ret void
}

declare dso_local i32 @isci_log_message(i32, i8*, i8*, i64) #1

declare dso_local i32 @isci_controller_domain_discovery_complete(%struct.ISCI_CONTROLLER*, %struct.ISCI_DOMAIN*) #1

declare dso_local i64 @sci_object_get_association(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
