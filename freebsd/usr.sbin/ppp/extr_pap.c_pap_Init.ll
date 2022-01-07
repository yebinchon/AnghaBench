; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pap.c_pap_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pap.c_pap_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { i32 }
%struct.physical = type { i32 }

@pap_Req = common dso_local global i32 0, align 4
@pap_Success = common dso_local global i32 0, align 4
@pap_Failure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pap_Init(%struct.authinfo* %0, %struct.physical* %1) #0 {
  %3 = alloca %struct.authinfo*, align 8
  %4 = alloca %struct.physical*, align 8
  store %struct.authinfo* %0, %struct.authinfo** %3, align 8
  store %struct.physical* %1, %struct.physical** %4, align 8
  %5 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %6 = load %struct.physical*, %struct.physical** %4, align 8
  %7 = load i32, i32* @pap_Req, align 4
  %8 = load i32, i32* @pap_Success, align 4
  %9 = load i32, i32* @pap_Failure, align 4
  %10 = call i32 @auth_Init(%struct.authinfo* %5, %struct.physical* %6, i32 %7, i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @auth_Init(%struct.authinfo*, %struct.physical*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
