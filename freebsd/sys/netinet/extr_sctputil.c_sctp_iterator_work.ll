; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_iterator_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_iterator_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.sctp_iterator* }
%struct.sctp_iterator = type { i32, i32, i32, i32, i32 (%struct.sctp_inpcb*, i32, i32)*, i32 (%struct.sctp_inpcb.0*, i32, i32)*, i32, i64, %struct.sctp_inpcb.1*, i32, i32, %struct.sctp_inpcb.1*, i32 (%struct.sctp_inpcb.1*, %struct.sctp_inpcb.1*, i32, i32)*, i32 (i32, i32)* }
%struct.sctp_inpcb = type opaque
%struct.sctp_inpcb.0 = type opaque
%struct.sctp_inpcb.1 = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@sctp_it_ctl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SCTP_M_ITER = common dso_local global i32 0, align 4
@SCTP_ITERATOR_DO_SINGLE_INP = common dso_local global i32 0, align 4
@sctp_list = common dso_local global i32 0, align 4
@SCTP_ITERATOR_MAX_AT_ONCE = common dso_local global i32 0, align 4
@SCTP_ITERATOR_STOP_CUR_IT = common dso_local global i32 0, align 4
@SCTP_ITERATOR_STOP_CUR_INP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown it ctl flag %x\0A\00", align 1
@SCTP_OUTPUT_FROM_T3 = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@sctp_tcblist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_iterator*)* @sctp_iterator_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_iterator_work(%struct.sctp_iterator* %0) #0 {
  %2 = alloca %struct.sctp_iterator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_inpcb.1*, align 8
  store %struct.sctp_iterator* %0, %struct.sctp_iterator** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = call i32 (...) @SCTP_INP_INFO_RLOCK()
  %8 = call i32 (...) @SCTP_ITERATOR_LOCK()
  %9 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  store %struct.sctp_iterator* %9, %struct.sctp_iterator** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 1), align 8
  %10 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %11 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %10, i32 0, i32 8
  %12 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %11, align 8
  %13 = icmp ne %struct.sctp_inpcb.1* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %16 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %15, i32 0, i32 8
  %17 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %16, align 8
  %18 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb.1* %17)
  %19 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %19, i32 0, i32 8
  %21 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %20, align 8
  %22 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb.1* %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %25 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %24, i32 0, i32 8
  %26 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %25, align 8
  %27 = icmp eq %struct.sctp_inpcb.1* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %434, %295, %134, %111, %28
  store %struct.sctp_iterator* null, %struct.sctp_iterator** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 1), align 8
  %30 = call i32 (...) @SCTP_ITERATOR_UNLOCK()
  %31 = call i32 (...) @SCTP_INP_INFO_RUNLOCK()
  %32 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %33 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %32, i32 0, i32 13
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = icmp ne i32 (i32, i32)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %38 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %37, i32 0, i32 13
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %41 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %44 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %39(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %36, %29
  %48 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %49 = load i32, i32* @SCTP_M_ITER, align 4
  %50 = call i32 @SCTP_FREE(%struct.sctp_iterator* %48, i32 %49)
  ret void

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %435, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

56:                                               ; preds = %52
  %57 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %58 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %57, i32 0, i32 8
  %59 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %58, align 8
  %60 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb.1* %59)
  br label %61

61:                                               ; preds = %56, %55
  br label %62

62:                                               ; preds = %135, %61
  %63 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %64 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %69 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %68, i32 0, i32 8
  %70 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %69, align 8
  %71 = getelementptr inbounds %struct.sctp_inpcb.1, %struct.sctp_inpcb.1* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %74 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %72, %75
  %77 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %78 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %102, label %81

81:                                               ; preds = %67, %62
  %82 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %83 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %88 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %87, i32 0, i32 8
  %89 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %88, align 8
  %90 = getelementptr inbounds %struct.sctp_inpcb.1, %struct.sctp_inpcb.1* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %93 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  %96 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %97 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %95, %98
  br label %100

100:                                              ; preds = %86, %81
  %101 = phi i1 [ false, %81 ], [ %99, %86 ]
  br label %102

102:                                              ; preds = %100, %67
  %103 = phi i1 [ true, %67 ], [ %101, %100 ]
  br i1 %103, label %104, label %140

104:                                              ; preds = %102
  %105 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %106 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SCTP_ITERATOR_DO_SINGLE_INP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %113 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %112, i32 0, i32 8
  %114 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %113, align 8
  %115 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb.1* %114)
  br label %29

116:                                              ; preds = %104
  %117 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %118 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %117, i32 0, i32 8
  %119 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %118, align 8
  store %struct.sctp_inpcb.1* %119, %struct.sctp_inpcb.1** %6, align 8
  %120 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %121 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %120, i32 0, i32 8
  %122 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %121, align 8
  %123 = load i32, i32* @sctp_list, align 4
  %124 = call i8* @LIST_NEXT(%struct.sctp_inpcb.1* %122, i32 %123)
  %125 = bitcast i8* %124 to %struct.sctp_inpcb.1*
  %126 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %127 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %126, i32 0, i32 8
  store %struct.sctp_inpcb.1* %125, %struct.sctp_inpcb.1** %127, align 8
  %128 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %6, align 8
  %129 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb.1* %128)
  %130 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %131 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %130, i32 0, i32 8
  %132 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %131, align 8
  %133 = icmp eq %struct.sctp_inpcb.1* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  br label %29

135:                                              ; preds = %116
  %136 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %137 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %136, i32 0, i32 8
  %138 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %137, align 8
  %139 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb.1* %138)
  br label %62

140:                                              ; preds = %102
  %141 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %142 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %140
  %146 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %147 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %146, i32 0, i32 4
  %148 = load i32 (%struct.sctp_inpcb*, i32, i32)*, i32 (%struct.sctp_inpcb*, i32, i32)** %147, align 8
  %149 = icmp ne i32 (%struct.sctp_inpcb*, i32, i32)* %148, null
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %152 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %151, i32 0, i32 4
  %153 = load i32 (%struct.sctp_inpcb*, i32, i32)*, i32 (%struct.sctp_inpcb*, i32, i32)** %152, align 8
  %154 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %155 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %154, i32 0, i32 8
  %156 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %155, align 8
  %157 = bitcast %struct.sctp_inpcb.1* %156 to %struct.sctp_inpcb*
  %158 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %159 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %162 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 8
  %164 = call i32 %153(%struct.sctp_inpcb* %157, i32 %160, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %150, %145
  %166 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %167 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %166, i32 0, i32 3
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %140
  %169 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %170 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %169, i32 0, i32 11
  %171 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %170, align 8
  %172 = icmp eq %struct.sctp_inpcb.1* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %175 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %174, i32 0, i32 8
  %176 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %175, align 8
  %177 = getelementptr inbounds %struct.sctp_inpcb.1, %struct.sctp_inpcb.1* %176, i32 0, i32 3
  %178 = call %struct.sctp_inpcb.1* @LIST_FIRST(i32* %177)
  %179 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %180 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %179, i32 0, i32 11
  store %struct.sctp_inpcb.1* %178, %struct.sctp_inpcb.1** %180, align 8
  br label %181

181:                                              ; preds = %173, %168
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %186 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %185, i32 0, i32 11
  %187 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %186, align 8
  %188 = icmp eq %struct.sctp_inpcb.1* %187, null
  br i1 %188, label %189, label %214

189:                                              ; preds = %184, %181
  %190 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %191 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %190, i32 0, i32 5
  %192 = load i32 (%struct.sctp_inpcb.0*, i32, i32)*, i32 (%struct.sctp_inpcb.0*, i32, i32)** %191, align 8
  %193 = icmp ne i32 (%struct.sctp_inpcb.0*, i32, i32)* %192, null
  br i1 %193, label %194, label %209

194:                                              ; preds = %189
  %195 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %196 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %195, i32 0, i32 5
  %197 = load i32 (%struct.sctp_inpcb.0*, i32, i32)*, i32 (%struct.sctp_inpcb.0*, i32, i32)** %196, align 8
  %198 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %199 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %198, i32 0, i32 8
  %200 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %199, align 8
  %201 = bitcast %struct.sctp_inpcb.1* %200 to %struct.sctp_inpcb.0*
  %202 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %203 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %206 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 8
  %208 = call i32 %197(%struct.sctp_inpcb.0* %201, i32 %204, i32 %207)
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %194, %189
  %210 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %211 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %210, i32 0, i32 8
  %212 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %211, align 8
  %213 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb.1* %212)
  br label %408

214:                                              ; preds = %184
  br label %215

215:                                              ; preds = %402, %214
  %216 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %217 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %216, i32 0, i32 11
  %218 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %217, align 8
  %219 = icmp ne %struct.sctp_inpcb.1* %218, null
  br i1 %219, label %220, label %403

220:                                              ; preds = %215
  %221 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %222 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %221, i32 0, i32 11
  %223 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %222, align 8
  %224 = call i32 @SCTP_TCB_LOCK(%struct.sctp_inpcb.1* %223)
  %225 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %226 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %249

229:                                              ; preds = %220
  %230 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %231 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %230, i32 0, i32 11
  %232 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %231, align 8
  %233 = getelementptr inbounds %struct.sctp_inpcb.1, %struct.sctp_inpcb.1* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %237 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %235, %238
  %240 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %241 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %239, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %229
  %245 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %246 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %245, i32 0, i32 11
  %247 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %246, align 8
  %248 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_inpcb.1* %247)
  br label %368

249:                                              ; preds = %229, %220
  %250 = load i32, i32* %3, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %3, align 4
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* @SCTP_ITERATOR_MAX_AT_ONCE, align 4
  %254 = icmp sgt i32 %252, %253
  br i1 %254, label %255, label %332

255:                                              ; preds = %249
  %256 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %257 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %256, i32 0, i32 11
  %258 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %257, align 8
  %259 = getelementptr inbounds %struct.sctp_inpcb.1, %struct.sctp_inpcb.1* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 1
  %261 = call i32 @atomic_add_int(i32* %260, i32 1)
  %262 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %263 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %262, i32 0, i32 11
  %264 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %263, align 8
  %265 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_inpcb.1* %264)
  %266 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %267 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %266, i32 0, i32 8
  %268 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %267, align 8
  %269 = call i32 @SCTP_INP_INCR_REF(%struct.sctp_inpcb.1* %268)
  %270 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %271 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %270, i32 0, i32 8
  %272 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %271, align 8
  %273 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb.1* %272)
  %274 = call i32 (...) @SCTP_ITERATOR_UNLOCK()
  %275 = call i32 (...) @SCTP_INP_INFO_RUNLOCK()
  %276 = call i32 (...) @SCTP_INP_INFO_RLOCK()
  %277 = call i32 (...) @SCTP_ITERATOR_LOCK()
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %313

280:                                              ; preds = %255
  %281 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %282 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %281, i32 0, i32 8
  %283 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %282, align 8
  %284 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb.1* %283)
  %285 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %286 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %285, i32 0, i32 11
  %287 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %286, align 8
  %288 = getelementptr inbounds %struct.sctp_inpcb.1, %struct.sctp_inpcb.1* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = call i32 @atomic_add_int(i32* %289, i32 -1)
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  %292 = load i32, i32* @SCTP_ITERATOR_STOP_CUR_IT, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %280
  %296 = load i32, i32* @SCTP_ITERATOR_STOP_CUR_IT, align 4
  %297 = xor i32 %296, -1
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  %299 = and i32 %298, %297
  store i32 %299, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  br label %29

300:                                              ; preds = %280
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  %302 = load i32, i32* @SCTP_ITERATOR_STOP_CUR_INP, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load i32, i32* @SCTP_ITERATOR_STOP_CUR_INP, align 4
  %307 = xor i32 %306, -1
  %308 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  %309 = and i32 %308, %307
  store i32 %309, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  br label %408

310:                                              ; preds = %300
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  %312 = call i32 @SCTP_PRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %311)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sctp_it_ctl, i32 0, i32 0), align 8
  br label %313

313:                                              ; preds = %310, %255
  %314 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %315 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %314, i32 0, i32 8
  %316 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %315, align 8
  %317 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb.1* %316)
  %318 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %319 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %318, i32 0, i32 8
  %320 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %319, align 8
  %321 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb.1* %320)
  %322 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %323 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %322, i32 0, i32 11
  %324 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %323, align 8
  %325 = call i32 @SCTP_TCB_LOCK(%struct.sctp_inpcb.1* %324)
  %326 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %327 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %326, i32 0, i32 11
  %328 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %327, align 8
  %329 = getelementptr inbounds %struct.sctp_inpcb.1, %struct.sctp_inpcb.1* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 1
  %331 = call i32 @atomic_add_int(i32* %330, i32 -1)
  store i32 0, i32* %3, align 4
  br label %332

332:                                              ; preds = %313, %249
  %333 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %334 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %333, i32 0, i32 12
  %335 = load i32 (%struct.sctp_inpcb.1*, %struct.sctp_inpcb.1*, i32, i32)*, i32 (%struct.sctp_inpcb.1*, %struct.sctp_inpcb.1*, i32, i32)** %334, align 8
  %336 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %337 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %336, i32 0, i32 8
  %338 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %337, align 8
  %339 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %340 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %339, i32 0, i32 11
  %341 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %340, align 8
  %342 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %343 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %342, i32 0, i32 10
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %346 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %345, i32 0, i32 9
  %347 = load i32, i32* %346, align 8
  %348 = call i32 %335(%struct.sctp_inpcb.1* %338, %struct.sctp_inpcb.1* %341, i32 %344, i32 %347)
  %349 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %350 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %349, i32 0, i32 7
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %332
  %354 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %355 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %354, i32 0, i32 8
  %356 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %355, align 8
  %357 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %358 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %357, i32 0, i32 11
  %359 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %358, align 8
  %360 = load i32, i32* @SCTP_OUTPUT_FROM_T3, align 4
  %361 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %362 = call i32 @sctp_chunk_output(%struct.sctp_inpcb.1* %356, %struct.sctp_inpcb.1* %359, i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %353, %332
  %364 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %365 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %364, i32 0, i32 11
  %366 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %365, align 8
  %367 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_inpcb.1* %366)
  br label %368

368:                                              ; preds = %363, %244
  %369 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %370 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %369, i32 0, i32 11
  %371 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %370, align 8
  %372 = load i32, i32* @sctp_tcblist, align 4
  %373 = call i8* @LIST_NEXT(%struct.sctp_inpcb.1* %371, i32 %372)
  %374 = bitcast i8* %373 to %struct.sctp_inpcb.1*
  %375 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %376 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %375, i32 0, i32 11
  store %struct.sctp_inpcb.1* %374, %struct.sctp_inpcb.1** %376, align 8
  %377 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %378 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %377, i32 0, i32 11
  %379 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %378, align 8
  %380 = icmp eq %struct.sctp_inpcb.1* %379, null
  br i1 %380, label %381, label %402

381:                                              ; preds = %368
  %382 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %383 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %382, i32 0, i32 5
  %384 = load i32 (%struct.sctp_inpcb.0*, i32, i32)*, i32 (%struct.sctp_inpcb.0*, i32, i32)** %383, align 8
  %385 = icmp ne i32 (%struct.sctp_inpcb.0*, i32, i32)* %384, null
  br i1 %385, label %386, label %401

386:                                              ; preds = %381
  %387 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %388 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %387, i32 0, i32 5
  %389 = load i32 (%struct.sctp_inpcb.0*, i32, i32)*, i32 (%struct.sctp_inpcb.0*, i32, i32)** %388, align 8
  %390 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %391 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %390, i32 0, i32 8
  %392 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %391, align 8
  %393 = bitcast %struct.sctp_inpcb.1* %392 to %struct.sctp_inpcb.0*
  %394 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %395 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %394, i32 0, i32 10
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %398 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %397, i32 0, i32 9
  %399 = load i32, i32* %398, align 8
  %400 = call i32 %389(%struct.sctp_inpcb.0* %393, i32 %396, i32 %399)
  store i32 %400, i32* %4, align 4
  br label %401

401:                                              ; preds = %386, %381
  br label %402

402:                                              ; preds = %401, %368
  br label %215

403:                                              ; preds = %215
  %404 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %405 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %404, i32 0, i32 8
  %406 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %405, align 8
  %407 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb.1* %406)
  br label %408

408:                                              ; preds = %403, %305, %209
  %409 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %410 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %409, i32 0, i32 3
  store i32 0, i32* %410, align 4
  %411 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %412 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @SCTP_ITERATOR_DO_SINGLE_INP, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %408
  %418 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %419 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %418, i32 0, i32 8
  store %struct.sctp_inpcb.1* null, %struct.sctp_inpcb.1** %419, align 8
  br label %429

420:                                              ; preds = %408
  %421 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %422 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %421, i32 0, i32 8
  %423 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %422, align 8
  %424 = load i32, i32* @sctp_list, align 4
  %425 = call i8* @LIST_NEXT(%struct.sctp_inpcb.1* %423, i32 %424)
  %426 = bitcast i8* %425 to %struct.sctp_inpcb.1*
  %427 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %428 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %427, i32 0, i32 8
  store %struct.sctp_inpcb.1* %426, %struct.sctp_inpcb.1** %428, align 8
  br label %429

429:                                              ; preds = %420, %417
  %430 = load %struct.sctp_iterator*, %struct.sctp_iterator** %2, align 8
  %431 = getelementptr inbounds %struct.sctp_iterator, %struct.sctp_iterator* %430, i32 0, i32 8
  %432 = load %struct.sctp_inpcb.1*, %struct.sctp_inpcb.1** %431, align 8
  %433 = icmp eq %struct.sctp_inpcb.1* %432, null
  br i1 %433, label %434, label %435

434:                                              ; preds = %429
  br label %29

435:                                              ; preds = %429
  br label %52
}

declare dso_local i32 @SCTP_INP_INFO_RLOCK(...) #1

declare dso_local i32 @SCTP_ITERATOR_LOCK(...) #1

declare dso_local i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb.1*) #1

declare dso_local i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb.1*) #1

declare dso_local i32 @SCTP_ITERATOR_UNLOCK(...) #1

declare dso_local i32 @SCTP_INP_INFO_RUNLOCK(...) #1

declare dso_local i32 @SCTP_FREE(%struct.sctp_iterator*, i32) #1

declare dso_local i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb.1*) #1

declare dso_local i8* @LIST_NEXT(%struct.sctp_inpcb.1*, i32) #1

declare dso_local %struct.sctp_inpcb.1* @LIST_FIRST(i32*) #1

declare dso_local i32 @SCTP_TCB_LOCK(%struct.sctp_inpcb.1*) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_inpcb.1*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @SCTP_INP_INCR_REF(%struct.sctp_inpcb.1*) #1

declare dso_local i32 @SCTP_PRINTF(i8*, i32) #1

declare dso_local i32 @sctp_chunk_output(%struct.sctp_inpcb.1*, %struct.sctp_inpcb.1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
