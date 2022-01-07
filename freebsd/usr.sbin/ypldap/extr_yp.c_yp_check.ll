; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }
%struct.sockaddr_in = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_check(%struct.svc_req* %0) #0 {
  %2 = alloca %struct.svc_req*, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %2, align 8
  %4 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %5 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.sockaddr_in* @svc_getcaller(i32 %6)
  store %struct.sockaddr_in* %7, %struct.sockaddr_in** %3, align 8
  ret i32 0
}

declare dso_local %struct.sockaddr_in* @svc_getcaller(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
