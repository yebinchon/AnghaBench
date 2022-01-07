; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_comstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_comstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.com_s* }
%struct.com_s = type { i32, i64, i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@FWRITE = common dso_local global i32 0, align 4
@CSE_ODONE = common dso_local global i32 0, align 4
@LOTS_OF_EVENTS = common dso_local global i64 0, align 8
@cy_events = common dso_local global i32 0, align 4
@ETC_NONE = common dso_local global i64 0, align 8
@ETC_BREAK_ENDED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@TS_BUSY = common dso_local global i32 0, align 4
@CS_ODONE = common dso_local global i32 0, align 4
@CS_BUSY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@CD1400_CCR_CMDRESET = common dso_local global i32 0, align 4
@CD1400_CCR_FTF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i32)* @comstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comstop(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.com_s*, align 8
  %6 = alloca i8*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load %struct.com_s*, %struct.com_s** %8, align 8
  store %struct.com_s* %9, %struct.com_s** %5, align 8
  %10 = load i8*, i8** @FALSE, align 8
  store i8* %10, i8** %6, align 8
  %11 = call i32 (...) @critical_enter()
  %12 = call i32 (...) @COM_LOCK()
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FWRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %96

17:                                               ; preds = %2
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.com_s*, %struct.com_s** %5, align 8
  %20 = getelementptr inbounds %struct.com_s, %struct.com_s* %19, i32 0, i32 6
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %18, i8** %23, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.com_s*, %struct.com_s** %5, align 8
  %26 = getelementptr inbounds %struct.com_s, %struct.com_s* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %24, i8** %29, align 8
  %30 = load %struct.com_s*, %struct.com_s** %5, align 8
  %31 = getelementptr inbounds %struct.com_s, %struct.com_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CSE_ODONE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %17
  %37 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %38 = load i32, i32* @cy_events, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @cy_events, align 4
  %42 = load i32, i32* @CSE_ODONE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.com_s*, %struct.com_s** %5, align 8
  %45 = getelementptr inbounds %struct.com_s, %struct.com_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.com_s*, %struct.com_s** %5, align 8
  %49 = getelementptr inbounds %struct.com_s, %struct.com_s* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETC_NONE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %36
  %54 = load %struct.com_s*, %struct.com_s** %5, align 8
  %55 = getelementptr inbounds %struct.com_s, %struct.com_s* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ETC_BREAK_ENDED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @ETC_NONE, align 8
  %61 = load %struct.com_s*, %struct.com_s** %5, align 8
  %62 = getelementptr inbounds %struct.com_s, %struct.com_s* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i8*, i8** @TRUE, align 8
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %63, %36
  br label %66

66:                                               ; preds = %65, %17
  %67 = load i32, i32* @TS_BUSY, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.com_s*, %struct.com_s** %5, align 8
  %70 = getelementptr inbounds %struct.com_s, %struct.com_s* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load %struct.com_s*, %struct.com_s** %5, align 8
  %76 = getelementptr inbounds %struct.com_s, %struct.com_s* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CS_ODONE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %66
  %82 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %83 = load i32, i32* @cy_events, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* @cy_events, align 4
  br label %87

87:                                               ; preds = %81, %66
  %88 = load i32, i32* @CS_ODONE, align 4
  %89 = load i32, i32* @CS_BUSY, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.com_s*, %struct.com_s** %5, align 8
  %93 = getelementptr inbounds %struct.com_s, %struct.com_s* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %87, %2
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @FREAD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load %struct.com_s*, %struct.com_s** %5, align 8
  %103 = getelementptr inbounds %struct.com_s, %struct.com_s* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.com_s*, %struct.com_s** %5, align 8
  %106 = getelementptr inbounds %struct.com_s, %struct.com_s* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load i32, i32* @cy_events, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* @cy_events, align 4
  %113 = load %struct.com_s*, %struct.com_s** %5, align 8
  %114 = getelementptr inbounds %struct.com_s, %struct.com_s* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.com_s*, %struct.com_s** %5, align 8
  %117 = getelementptr inbounds %struct.com_s, %struct.com_s* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %101, %96
  %119 = call i32 (...) @COM_UNLOCK()
  %120 = call i32 (...) @critical_exit()
  %121 = load i8*, i8** %6, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.com_s*, %struct.com_s** %5, align 8
  %125 = getelementptr inbounds %struct.com_s, %struct.com_s* %124, i32 0, i32 1
  %126 = call i32 @wakeup(i64* %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @FWRITE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load %struct.com_s*, %struct.com_s** %5, align 8
  %134 = getelementptr inbounds %struct.com_s, %struct.com_s* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ETC_NONE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.com_s*, %struct.com_s** %5, align 8
  %140 = load i32, i32* @CD1400_CCR_CMDRESET, align 4
  %141 = load i32, i32* @CD1400_CCR_FTF, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @cd1400_channel_cmd(%struct.com_s* %139, i32 %142)
  br label %144

144:                                              ; preds = %138, %132, %127
  %145 = load %struct.tty*, %struct.tty** %3, align 8
  %146 = call i32 @cystart(%struct.tty* %145)
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @cd1400_channel_cmd(%struct.com_s*, i32) #1

declare dso_local i32 @cystart(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
