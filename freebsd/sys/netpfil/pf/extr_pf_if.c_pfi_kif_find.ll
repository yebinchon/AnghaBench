; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_kif_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_kif_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i32 }
%struct.pfi_kif_cmp = type { i32 }

@pfi_ifhead = common dso_local global i32 0, align 4
@V_pfi_ifs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pfi_kif* @pfi_kif_find(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pfi_kif_cmp, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @PF_RULES_ASSERT()
  %5 = call i32 @bzero(%struct.pfi_kif_cmp* %3, i32 4)
  %6 = getelementptr inbounds %struct.pfi_kif_cmp, %struct.pfi_kif_cmp* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlcpy(i32 %7, i8* %8, i32 4)
  %10 = load i32, i32* @pfi_ifhead, align 4
  %11 = bitcast %struct.pfi_kif_cmp* %3 to %struct.pfi_kif*
  %12 = call %struct.pfi_kif* @RB_FIND(i32 %10, i32* @V_pfi_ifs, %struct.pfi_kif* %11)
  ret %struct.pfi_kif* %12
}

declare dso_local i32 @PF_RULES_ASSERT(...) #1

declare dso_local i32 @bzero(%struct.pfi_kif_cmp*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.pfi_kif* @RB_FIND(i32, i32*, %struct.pfi_kif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
