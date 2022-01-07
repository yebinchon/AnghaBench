; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsmcodedesc = type { i32 (%struct.fsm.0*, %struct.fsmheader*, %struct.mbuf*)*, i64, i64, i32 }
%struct.fsm.0 = type opaque
%struct.fsmheader = type { i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.fsm = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: Oops: Got %zu bytes but %d byte payload - dropped\0A\00", align 1
@fsm_Input.id = internal global i32 0, align 4
@CODE_CODEREJ = common dso_local global i32 0, align 4
@MB_UNKNOWN = common dso_local global i32 0, align 4
@FsmCodes = common dso_local global %struct.fsmcodedesc* null, align 8
@OPT_IDCHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: Recv%s(%d), dropped (expected %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Recv%s(%d) state = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Input(%struct.fsm* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsmheader, align 4
  %7 = alloca %struct.fsmcodedesc*, align 8
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = call i64 @m_length(%struct.mbuf* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 12
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = call i32 @m_freem(%struct.mbuf* %13)
  br label %175

15:                                               ; preds = %2
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %16, %struct.fsmheader* %6, i32 12)
  store %struct.mbuf* %17, %struct.mbuf** %4, align 8
  %18 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntohs(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load i32, i32* @LogWARN, align 4
  %25 = load %struct.fsm*, %struct.fsm** %3, align 8
  %26 = getelementptr inbounds %struct.fsm, %struct.fsm* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ntohs(i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, i8*, i32, i64, i32, ...) @log_Printf(i32 %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %30, i32 %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = call i32 @m_freem(%struct.mbuf* %36)
  br label %175

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fsm*, %struct.fsm** %3, align 8
  %42 = getelementptr inbounds %struct.fsm, %struct.fsm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fsm*, %struct.fsm** %3, align 8
  %49 = getelementptr inbounds %struct.fsm, %struct.fsm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52, %45, %38
  %58 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %59 = call %struct.mbuf* @m_prepend(%struct.mbuf* %58, %struct.fsmheader* %6, i32 12, i32 0)
  store %struct.mbuf* %59, %struct.mbuf** %4, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = call %struct.mbuf* @m_pullup(%struct.mbuf* %60)
  store %struct.mbuf* %61, %struct.mbuf** %4, align 8
  %62 = load %struct.fsm*, %struct.fsm** %3, align 8
  %63 = load i32, i32* @CODE_CODEREJ, align 4
  %64 = load i32, i32* @fsm_Input.id, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @fsm_Input.id, align 4
  %66 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %67 = call i32 @MBUF_CTOP(%struct.mbuf* %66)
  %68 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MB_UNKNOWN, align 4
  %72 = call i32 @fsm_Output(%struct.fsm* %62, i32 %63, i32 %64, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %74 = call i32 @m_freem(%struct.mbuf* %73)
  br label %175

75:                                               ; preds = %52
  %76 = load %struct.fsmcodedesc*, %struct.fsmcodedesc** @FsmCodes, align 8
  %77 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %76, i64 %79
  %81 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %80, i64 -1
  store %struct.fsmcodedesc* %81, %struct.fsmcodedesc** %7, align 8
  %82 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fsm*, %struct.fsm** %3, align 8
  %85 = getelementptr inbounds %struct.fsm, %struct.fsm* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %75
  %89 = load %struct.fsmcodedesc*, %struct.fsmcodedesc** %7, align 8
  %90 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load %struct.fsm*, %struct.fsm** %3, align 8
  %95 = getelementptr inbounds %struct.fsm, %struct.fsm* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @OPT_IDCHECK, align 4
  %98 = call i64 @Enabled(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %93
  %101 = load %struct.fsm*, %struct.fsm** %3, align 8
  %102 = getelementptr inbounds %struct.fsm, %struct.fsm* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fsm*, %struct.fsm** %3, align 8
  %105 = getelementptr inbounds %struct.fsm, %struct.fsm* %104, i32 0, i32 5
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fsmcodedesc*, %struct.fsmcodedesc** %7, align 8
  %110 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fsm*, %struct.fsm** %3, align 8
  %116 = getelementptr inbounds %struct.fsm, %struct.fsm* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, i32, i64, i32, ...) @log_Printf(i32 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %108, i64 %112, i32 %114, i32 %117)
  br label %175

119:                                              ; preds = %93, %88, %75
  %120 = load %struct.fsm*, %struct.fsm** %3, align 8
  %121 = getelementptr inbounds %struct.fsm, %struct.fsm* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.fsm*, %struct.fsm** %3, align 8
  %124 = getelementptr inbounds %struct.fsm, %struct.fsm* %123, i32 0, i32 5
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.fsmcodedesc*, %struct.fsmcodedesc** %7, align 8
  %129 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fsm*, %struct.fsm** %3, align 8
  %135 = getelementptr inbounds %struct.fsm, %struct.fsm* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @State2Nam(i32 %136)
  %138 = call i32 (i32, i8*, i32, i64, i32, ...) @log_Printf(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %127, i64 %131, i32 %133, i32 %137)
  %139 = load %struct.fsmcodedesc*, %struct.fsmcodedesc** %7, align 8
  %140 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %119
  %144 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %6, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.fsm*, %struct.fsm** %3, align 8
  %147 = getelementptr inbounds %struct.fsm, %struct.fsm* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %162, label %150

150:                                              ; preds = %143
  %151 = load %struct.fsm*, %struct.fsm** %3, align 8
  %152 = getelementptr inbounds %struct.fsm, %struct.fsm* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @OPT_IDCHECK, align 4
  %155 = call i64 @Enabled(i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %150
  %158 = load %struct.fsmcodedesc*, %struct.fsmcodedesc** %7, align 8
  %159 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157, %143
  %163 = load %struct.fsm*, %struct.fsm** %3, align 8
  %164 = getelementptr inbounds %struct.fsm, %struct.fsm* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %162, %157, %150, %119
  %168 = load %struct.fsmcodedesc*, %struct.fsmcodedesc** %7, align 8
  %169 = getelementptr inbounds %struct.fsmcodedesc, %struct.fsmcodedesc* %168, i32 0, i32 0
  %170 = load i32 (%struct.fsm.0*, %struct.fsmheader*, %struct.mbuf*)*, i32 (%struct.fsm.0*, %struct.fsmheader*, %struct.mbuf*)** %169, align 8
  %171 = load %struct.fsm*, %struct.fsm** %3, align 8
  %172 = bitcast %struct.fsm* %171 to %struct.fsm.0*
  %173 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %174 = call i32 %170(%struct.fsm.0* %172, %struct.fsmheader* %6, %struct.mbuf* %173)
  br label %175

175:                                              ; preds = %167, %100, %57, %23, %12
  ret void
}

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, %struct.fsmheader*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64, i32, ...) #1

declare dso_local %struct.mbuf* @m_prepend(%struct.mbuf*, %struct.fsmheader*, i32, i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i64 @Enabled(i32, i32) #1

declare dso_local i32 @State2Nam(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
