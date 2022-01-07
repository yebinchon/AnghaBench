; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_async.c_async_Decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_async.c_async_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.async = type { i32, i32*, i32 }

@MODE_HUNT = common dso_local global i32 0, align 4
@MB_ASYNCIN = common dso_local global i32 0, align 4
@MODE_ESC = common dso_local global i32 0, align 4
@HDLCSIZE = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Packet too large (%d), discarding.\0A\00", align 1
@HDLC_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.async*, i32)* @async_Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @async_Decode(%struct.async* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.async*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store %struct.async* %0, %struct.async** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.async*, %struct.async** %4, align 8
  %8 = getelementptr inbounds %struct.async, %struct.async* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MODE_HUNT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %108

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %62 [
    i32 128, label %19
    i32 129, label %48
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @MODE_HUNT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.async*, %struct.async** %4, align 8
  %23 = getelementptr inbounds %struct.async, %struct.async* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.async*, %struct.async** %4, align 8
  %27 = getelementptr inbounds %struct.async, %struct.async* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %19
  %31 = load %struct.async*, %struct.async** %4, align 8
  %32 = getelementptr inbounds %struct.async, %struct.async* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MB_ASYNCIN, align 4
  %35 = call %struct.mbuf* @m_get(i32 %33, i32 %34)
  store %struct.mbuf* %35, %struct.mbuf** %6, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = load %struct.async*, %struct.async** %4, align 8
  %38 = getelementptr inbounds %struct.async, %struct.async* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.async*, %struct.async** %4, align 8
  %41 = getelementptr inbounds %struct.async, %struct.async* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mbuf_Write(%struct.mbuf* %36, i32* %39, i32 %42)
  %44 = load %struct.async*, %struct.async** %4, align 8
  %45 = getelementptr inbounds %struct.async, %struct.async* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %46, %struct.mbuf** %3, align 8
  br label %108

47:                                               ; preds = %19
  br label %107

48:                                               ; preds = %17
  %49 = load %struct.async*, %struct.async** %4, align 8
  %50 = getelementptr inbounds %struct.async, %struct.async* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MODE_ESC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @MODE_ESC, align 4
  %57 = load %struct.async*, %struct.async** %4, align 8
  %58 = getelementptr inbounds %struct.async, %struct.async* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %107

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %17, %61
  %63 = load %struct.async*, %struct.async** %4, align 8
  %64 = getelementptr inbounds %struct.async, %struct.async* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HDLCSIZE, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* @LogWARN, align 4
  %70 = load %struct.async*, %struct.async** %4, align 8
  %71 = getelementptr inbounds %struct.async, %struct.async* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @log_Printf(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.async*, %struct.async** %4, align 8
  %75 = getelementptr inbounds %struct.async, %struct.async* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* @MODE_HUNT, align 4
  %77 = load %struct.async*, %struct.async** %4, align 8
  %78 = getelementptr inbounds %struct.async, %struct.async* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %107

79:                                               ; preds = %62
  %80 = load %struct.async*, %struct.async** %4, align 8
  %81 = getelementptr inbounds %struct.async, %struct.async* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MODE_ESC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load i32, i32* @HDLC_XOR, align 4
  %88 = load i32, i32* %5, align 4
  %89 = xor i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @MODE_ESC, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.async*, %struct.async** %4, align 8
  %93 = getelementptr inbounds %struct.async, %struct.async* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %86, %79
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.async*, %struct.async** %4, align 8
  %99 = getelementptr inbounds %struct.async, %struct.async* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.async*, %struct.async** %4, align 8
  %102 = getelementptr inbounds %struct.async, %struct.async* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  store i32 %97, i32* %106, align 4
  br label %107

107:                                              ; preds = %96, %68, %55, %47
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %108

108:                                              ; preds = %107, %30, %16
  %109 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %109
}

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @mbuf_Write(%struct.mbuf*, i32*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
