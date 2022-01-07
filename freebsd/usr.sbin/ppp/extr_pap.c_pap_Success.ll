; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pap.c_pap_Success.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pap.c_pap_Success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { %struct.TYPE_14__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.bundle* }
%struct.bundle = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }

@PAP_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Greetings!!\00", align 1
@OPT_UTMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.authinfo*)* @pap_Success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pap_Success(%struct.authinfo* %0) #0 {
  %2 = alloca %struct.authinfo*, align 8
  %3 = alloca %struct.bundle*, align 8
  store %struct.authinfo* %0, %struct.authinfo** %2, align 8
  %4 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %5 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %4, i32 0, i32 0
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.bundle*, %struct.bundle** %9, align 8
  store %struct.bundle* %10, %struct.bundle** %3, align 8
  %11 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %12 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %17 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @datalink_GotAuthname(%struct.TYPE_15__* %15, i32 %19)
  %21 = load %struct.bundle*, %struct.bundle** %3, align 8
  %22 = getelementptr inbounds %struct.bundle, %struct.bundle* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.bundle*, %struct.bundle** %3, align 8
  %30 = getelementptr inbounds %struct.bundle, %struct.bundle* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %36 = load i32, i32* @PAP_ACK, align 4
  %37 = load %struct.bundle*, %struct.bundle** %3, align 8
  %38 = getelementptr inbounds %struct.bundle, %struct.bundle* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @SendPapCode(%struct.authinfo* %35, i32 %36, i8* %40)
  br label %46

42:                                               ; preds = %28, %1
  %43 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %44 = load i32, i32* @PAP_ACK, align 4
  %45 = call i32 @SendPapCode(%struct.authinfo* %43, i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %48 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.bundle*, %struct.bundle** %3, align 8
  %54 = load i32, i32* @OPT_UTMP, align 4
  %55 = call i64 @Enabled(%struct.bundle* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %59 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %62 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @physical_Login(%struct.TYPE_14__* %60, i32 %64)
  br label %66

66:                                               ; preds = %57, %46
  %67 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %68 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %77 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = call i32 @datalink_AuthOk(%struct.TYPE_15__* %80)
  br label %82

82:                                               ; preds = %75, %66
  ret void
}

declare dso_local i32 @datalink_GotAuthname(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SendPapCode(%struct.authinfo*, i32, i8*) #1

declare dso_local i64 @Enabled(%struct.bundle*, i32) #1

declare dso_local i32 @physical_Login(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @datalink_AuthOk(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
