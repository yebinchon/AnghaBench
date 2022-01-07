; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_input.c_rsvp_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_input.c_rsvp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@IPPROTO_DONE = common dso_local global i32 0, align 4
@V_rsvp_on = common dso_local global i32 0, align 4
@V_ip_rsvpd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsvp_input(%struct.mbuf** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.mbuf** %0, %struct.mbuf*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %10, %struct.mbuf** %8, align 8
  %11 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  br i1 true, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %14 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %13, %struct.mbuf** %14, align 8
  %15 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rsvp_input_p(%struct.mbuf** %15, i32* %16, i32 %17)
  %19 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load i32, i32* @V_rsvp_on, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  %26 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load i32*, i32** @V_ip_rsvpd, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %31, %struct.mbuf** %32, align 8
  %33 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @rip_input(%struct.mbuf** %33, i32* %34, i32 %35)
  %37 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = call i32 @m_freem(%struct.mbuf* %39)
  %41 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %30, %23, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @rsvp_input_p(%struct.mbuf**, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @rip_input(%struct.mbuf**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
