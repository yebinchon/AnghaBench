; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_toast_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_toast_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rulehead = type { i32 }
%struct.rule = type { i32 }

@r_entries = common dso_local global i32 0, align 4
@M_PORTACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rulehead*)* @toast_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toast_rules(%struct.rulehead* %0) #0 {
  %2 = alloca %struct.rulehead*, align 8
  %3 = alloca %struct.rule*, align 8
  store %struct.rulehead* %0, %struct.rulehead** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.rulehead*, %struct.rulehead** %2, align 8
  %6 = call %struct.rule* @TAILQ_FIRST(%struct.rulehead* %5)
  store %struct.rule* %6, %struct.rule** %3, align 8
  %7 = icmp ne %struct.rule* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load %struct.rulehead*, %struct.rulehead** %2, align 8
  %10 = load %struct.rule*, %struct.rule** %3, align 8
  %11 = load i32, i32* @r_entries, align 4
  %12 = call i32 @TAILQ_REMOVE(%struct.rulehead* %9, %struct.rule* %10, i32 %11)
  %13 = load %struct.rule*, %struct.rule** %3, align 8
  %14 = load i32, i32* @M_PORTACL, align 4
  %15 = call i32 @free(%struct.rule* %13, i32 %14)
  br label %4

16:                                               ; preds = %4
  ret void
}

declare dso_local %struct.rule* @TAILQ_FIRST(%struct.rulehead*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.rulehead*, %struct.rule*, i32) #1

declare dso_local i32 @free(%struct.rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
