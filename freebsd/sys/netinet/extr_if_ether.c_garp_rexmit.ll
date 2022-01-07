; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_garp_rexmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_garp_rexmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@garp_rexmit_count = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @garp_rexmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garp_rexmit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.in_ifaddr*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %6, %struct.in_ifaddr** %3, align 8
  %7 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %8 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %7, i32 0, i32 2
  %9 = call i64 @callout_pending(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %13 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %12, i32 0, i32 2
  %14 = call i32 @callout_active(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %18 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call i32 @IF_ADDR_WUNLOCK(%struct.TYPE_8__* %20)
  %22 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %23 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %22, i32 0, i32 1
  %24 = call i32 @ifa_free(%struct.TYPE_7__* %23)
  br label %97

25:                                               ; preds = %11
  %26 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %27 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CURVNET_SET(i32 %31)
  %33 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %34 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i32 @IF_ADDR_WUNLOCK(%struct.TYPE_8__* %36)
  %38 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %39 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %43 = call %struct.TYPE_9__* @IA_SIN(%struct.in_ifaddr* %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %46 = call %struct.TYPE_9__* @IA_SIN(%struct.in_ifaddr* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %49 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @IF_LLADDR(%struct.TYPE_8__* %51)
  %53 = call i32 @arprequest(%struct.TYPE_8__* %41, i32* %44, i32* %47, i32 %52)
  %54 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %55 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %59 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @garp_rexmit_count, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %25
  %64 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %65 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %64, i32 0, i32 1
  %66 = call i32 @ifa_free(%struct.TYPE_7__* %65)
  br label %95

67:                                               ; preds = %25
  %68 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %69 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = call i32 @IF_ADDR_WLOCK(%struct.TYPE_8__* %71)
  %73 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %74 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %73, i32 0, i32 2
  %75 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %76 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = load i32, i32* @hz, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %82 = call i32 @callout_reset(i32* %74, i32 %80, void (i8*)* @garp_rexmit, %struct.in_ifaddr* %81)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %84 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @IF_ADDR_WUNLOCK(%struct.TYPE_8__* %86)
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %67
  %91 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %92 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %91, i32 0, i32 1
  %93 = call i32 @ifa_free(%struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %90, %67
  br label %95

95:                                               ; preds = %94, %63
  %96 = call i32 (...) @CURVNET_RESTORE()
  br label %97

97:                                               ; preds = %95, %16
  ret void
}

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @IF_ADDR_WUNLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @ifa_free(%struct.TYPE_7__*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @arprequest(%struct.TYPE_8__*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @IA_SIN(%struct.in_ifaddr*) #1

declare dso_local i32 @IF_LLADDR(%struct.TYPE_8__*) #1

declare dso_local i32 @IF_ADDR_WLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.in_ifaddr*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
