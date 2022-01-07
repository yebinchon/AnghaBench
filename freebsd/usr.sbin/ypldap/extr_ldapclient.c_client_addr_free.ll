; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_client_addr_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_client_addr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idm = type { i32 }
%struct.ypldap_addr = type { i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_addr_free(%struct.idm* %0) #0 {
  %2 = alloca %struct.idm*, align 8
  %3 = alloca %struct.ypldap_addr*, align 8
  store %struct.idm* %0, %struct.idm** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.idm*, %struct.idm** %2, align 8
  %6 = getelementptr inbounds %struct.idm, %struct.idm* %5, i32 0, i32 0
  %7 = call i32 @TAILQ_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.idm*, %struct.idm** %2, align 8
  %12 = getelementptr inbounds %struct.idm, %struct.idm* %11, i32 0, i32 0
  %13 = call %struct.ypldap_addr* @TAILQ_FIRST(i32* %12)
  store %struct.ypldap_addr* %13, %struct.ypldap_addr** %3, align 8
  %14 = load %struct.idm*, %struct.idm** %2, align 8
  %15 = getelementptr inbounds %struct.idm, %struct.idm* %14, i32 0, i32 0
  %16 = load %struct.ypldap_addr*, %struct.ypldap_addr** %3, align 8
  %17 = load i32, i32* @next, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %15, %struct.ypldap_addr* %16, i32 %17)
  %19 = load %struct.ypldap_addr*, %struct.ypldap_addr** %3, align 8
  %20 = call i32 @free(%struct.ypldap_addr* %19)
  br label %4

21:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.ypldap_addr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ypldap_addr*, i32) #1

declare dso_local i32 @free(%struct.ypldap_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
