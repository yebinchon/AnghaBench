; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEUsable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEUsable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.lcp }
%struct.lcp = type { i64, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.radius }
%struct.radius = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64* }

@LogCCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"MPPE: Not permitted by RADIUS server\0A\00", align 1
@PROTO_CHAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"MPPE: Not usable without CHAP81\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsm*)* @MPPEUsable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPPEUsable(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.radius*, align 8
  %5 = alloca %struct.lcp*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %6 = load %struct.fsm*, %struct.fsm** %2, align 8
  %7 = getelementptr inbounds %struct.fsm, %struct.fsm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.radius* %9, %struct.radius** %4, align 8
  %10 = load %struct.radius*, %struct.radius** %4, align 8
  %11 = getelementptr inbounds %struct.radius, %struct.radius* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.radius*, %struct.radius** %4, align 8
  %18 = getelementptr inbounds %struct.radius, %struct.radius* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.radius*, %struct.radius** %4, align 8
  %24 = getelementptr inbounds %struct.radius, %struct.radius* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i1 [ false, %16 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @LogCCP, align 4
  %35 = call i32 @log_Printf(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  br label %74

37:                                               ; preds = %1
  %38 = load %struct.fsm*, %struct.fsm** %2, align 8
  %39 = getelementptr inbounds %struct.fsm, %struct.fsm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.lcp* %41, %struct.lcp** %5, align 8
  %42 = load %struct.lcp*, %struct.lcp** %5, align 8
  %43 = getelementptr inbounds %struct.lcp, %struct.lcp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PROTO_CHAP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.lcp*, %struct.lcp** %5, align 8
  %49 = getelementptr inbounds %struct.lcp, %struct.lcp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 129
  br i1 %51, label %65, label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.lcp*, %struct.lcp** %5, align 8
  %54 = getelementptr inbounds %struct.lcp, %struct.lcp* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PROTO_CHAP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.lcp*, %struct.lcp** %5, align 8
  %60 = getelementptr inbounds %struct.lcp, %struct.lcp* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 129
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i1 [ false, %52 ], [ %62, %58 ]
  br label %65

65:                                               ; preds = %63, %47
  %66 = phi i1 [ true, %47 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @LogCCP, align 4
  %72 = call i32 @log_Printf(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %36
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @log_Printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
