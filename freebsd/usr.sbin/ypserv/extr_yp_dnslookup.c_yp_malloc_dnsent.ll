; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_malloc_dnsent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_malloc_dnsent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circleq_dnsentry = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to malloc() circleq dns entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.circleq_dnsentry* ()* @yp_malloc_dnsent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.circleq_dnsentry* @yp_malloc_dnsent() #0 {
  %1 = alloca %struct.circleq_dnsentry*, align 8
  %2 = alloca %struct.circleq_dnsentry*, align 8
  %3 = call %struct.circleq_dnsentry* @malloc(i32 4)
  store %struct.circleq_dnsentry* %3, %struct.circleq_dnsentry** %2, align 8
  %4 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %2, align 8
  %5 = icmp eq %struct.circleq_dnsentry* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @yp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.circleq_dnsentry* null, %struct.circleq_dnsentry** %1, align 8
  br label %10

8:                                                ; preds = %0
  %9 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %2, align 8
  store %struct.circleq_dnsentry* %9, %struct.circleq_dnsentry** %1, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  ret %struct.circleq_dnsentry* %11
}

declare dso_local %struct.circleq_dnsentry* @malloc(i32) #1

declare dso_local i32 @yp_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
