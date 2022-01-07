; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_prune_dnsq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_prune_dnsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circleq_dnsentry = type { %struct.circleq_dnsentry*, i32 }

@qhead = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@pending = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yp_prune_dnsq() #0 {
  %1 = alloca %struct.circleq_dnsentry*, align 8
  %2 = alloca %struct.circleq_dnsentry*, align 8
  %3 = call %struct.circleq_dnsentry* @TAILQ_FIRST(i32* @qhead)
  store %struct.circleq_dnsentry* %3, %struct.circleq_dnsentry** %1, align 8
  br label %4

4:                                                ; preds = %31, %0
  %5 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %6 = icmp ne %struct.circleq_dnsentry* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %9 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %13 = load i32, i32* @links, align 4
  %14 = call %struct.circleq_dnsentry* @TAILQ_NEXT(%struct.circleq_dnsentry* %12, i32 %13)
  store %struct.circleq_dnsentry* %14, %struct.circleq_dnsentry** %2, align 8
  %15 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %16 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %7
  %20 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %21 = load i32, i32* @links, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* @qhead, %struct.circleq_dnsentry* %20, i32 %21)
  %23 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %24 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %23, i32 0, i32 0
  %25 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %24, align 8
  %26 = call i32 @free(%struct.circleq_dnsentry* %25)
  %27 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %28 = call i32 @free(%struct.circleq_dnsentry* %27)
  %29 = load i64, i64* @pending, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* @pending, align 8
  br label %31

31:                                               ; preds = %19, %7
  %32 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %2, align 8
  store %struct.circleq_dnsentry* %32, %struct.circleq_dnsentry** %1, align 8
  br label %4

33:                                               ; preds = %4
  %34 = load i64, i64* @pending, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 0, i64* @pending, align 8
  br label %37

37:                                               ; preds = %36, %33
  ret void
}

declare dso_local %struct.circleq_dnsentry* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.circleq_dnsentry* @TAILQ_NEXT(%struct.circleq_dnsentry*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.circleq_dnsentry*, i32) #1

declare dso_local i32 @free(%struct.circleq_dnsentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
