; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_proc_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_proc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__*, %struct.TYPE_27__ }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i8*, i8*, i32, i8* }

@ISC_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"which=%d sn->maxCmd=%d sn->cmd=%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pq=%p\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"bad opcode=0x%x sn(cmd=0x%x expCmd=0x%x maxCmd=0x%x expStat=0x%x itt=0x%x)\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"opcode=0x%x sn(cmd=0x%x expCmd=0x%x maxCmd=0x%x expStat=0x%x itt=0x%x)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"error=%d opcode=0x%x ccb=%p itt=%x\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"requed\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"back to cam\00", align 1
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"we lost it!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @proc_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_out(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 2
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %3, align 8
  %11 = call i32 @debug_called(i32 8)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %219, %1
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ISC_LINK_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %220

19:                                               ; preds = %12
  %20 = call i32 @BIT(i32 0)
  %21 = call i32 @BIT(i32 1)
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @SNA_GT(i32 %25, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = call i32 @BIT(i32 2)
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %19
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @sdebug(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.TYPE_26__* @i_dqueue_snd(%struct.TYPE_28__* %44, i32 %45)
  store %struct.TYPE_26__* %46, %struct.TYPE_26__** %4, align 8
  %47 = icmp eq %struct.TYPE_26__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %220

49:                                               ; preds = %35
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %51 = call i32 (i32, i8*, ...) @sdebug(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %50)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  store %struct.TYPE_27__* %53, %struct.TYPE_27__** %7, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %8, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %96 [
    i32 132, label %60
    i32 135, label %71
    i32 129, label %71
    i32 134, label %71
    i32 131, label %71
    i32 133, label %71
    i32 130, label %71
    i32 128, label %88
  ]

60:                                               ; preds = %49
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %49, %49, %49, %49, %49, %49, %60
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %71
  br label %88

88:                                               ; preds = %49, %87
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i8* @htonl(i32 %92)
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %116

96:                                               ; preds = %49
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @xdebug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %102, i32 %105, i32 %108, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %96, %88
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, ...) @sdebug(i32 4, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %122, i32 %125, i32 %128, i32 %131, i32 %134)
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 133
  br i1 %139, label %140, label %144

140:                                              ; preds = %116
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %143 = call i32 @i_nqueue_hld(%struct.TYPE_28__* %141, %struct.TYPE_26__* %142)
  br label %144

144:                                              ; preds = %140, %116
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = call i32 @isc_sendPDU(%struct.TYPE_28__* %145, %struct.TYPE_26__* %146)
  store i32 %147, i32* %5, align 4
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 133
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %157 = call i32 @pdu_free(i32 %155, %struct.TYPE_26__* %156)
  br label %158

158:                                              ; preds = %152, %144
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %219

161:                                              ; preds = %158
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @ntohl(i8* %171)
  %173 = call i32 (i8*, ...) @xdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %165, %struct.TYPE_23__* %168, i32 %172)
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %176 = call i32 @i_remove_hld(%struct.TYPE_28__* %174, %struct.TYPE_26__* %175)
  %177 = load i32, i32* %5, align 4
  switch i32 %177, label %190 [
    i32 136, label %178
    i32 137, label %185
  ]

178:                                              ; preds = %161
  %179 = load i32, i32* @ISC_LINK_UP, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %161, %178
  %186 = call i32 (i8*, ...) @xdebug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %189 = call i32 @i_rqueue_pdu(%struct.TYPE_28__* %187, %struct.TYPE_26__* %188)
  br label %218

190:                                              ; preds = %161
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %192, align 8
  %194 = icmp ne %struct.TYPE_23__* %193, null
  br i1 %194, label %195, label %215

195:                                              ; preds = %190
  %196 = call i32 (i8*, ...) @xdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %197 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %197
  store i32 %204, i32* %202, align 4
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %207, align 8
  %209 = call i32 @XPT_DONE(%struct.TYPE_28__* %205, %struct.TYPE_23__* %208)
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %214 = call i32 @pdu_free(i32 %212, %struct.TYPE_26__* %213)
  br label %217

215:                                              ; preds = %190
  %216 = call i32 (i8*, ...) @xdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %195
  br label %218

218:                                              ; preds = %217, %185
  br label %219

219:                                              ; preds = %218, %158
  br label %12

220:                                              ; preds = %48, %12
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @SNA_GT(i32, i32) #1

declare dso_local i32 @sdebug(i32, i8*, ...) #1

declare dso_local %struct.TYPE_26__* @i_dqueue_snd(%struct.TYPE_28__*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdebug(i8*, ...) #1

declare dso_local i32 @i_nqueue_hld(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @isc_sendPDU(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @pdu_free(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local i32 @i_remove_hld(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @i_rqueue_pdu(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @XPT_DONE(%struct.TYPE_28__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
