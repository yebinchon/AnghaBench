; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checksequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checksequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { %struct.TYPE_16__*, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.nfsdsession = type { i32, %struct.TYPE_15__*, %struct.TYPE_12__, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.nfssessionhash = type { i32 }

@NFSERR_BADSESSION = common dso_local global i32 0, align 4
@NFSV4_SLOTS = common dso_local global i64 0, align 8
@ND_SAVEREPLY = common dso_local global i32 0, align 4
@ND_IMPLIEDCLID = common dso_local global i32 0, align 4
@NFSV4CRSESS_CONNBACKCHAN = common dso_local global i32 0, align 4
@LCL_DONEBINDCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"nfsrv_checksequence: implicit back channel bind\0A\00", align 1
@NFSV4SEQ_CBPATHDOWN = common dso_local global i64 0, align 8
@NFSERR_EXPIRED = common dso_local global i32 0, align 4
@NFSV4SEQ_EXPIREDALLSTATEREVOKED = common dso_local global i64 0, align 8
@NFSERR_ADMINREVOKED = common dso_local global i32 0, align 4
@NFSV4SEQ_ADMINSTATEREVOKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_checksequence(%struct.nfsrv_descript* %0, i64 %1, i64* %2, i64* %3, i32 %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsrv_descript*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nfsdsession*, align 8
  %17 = alloca %struct.nfssessionhash*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %21 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nfssessionhash* @NFSSESSIONHASH(i32 %22)
  store %struct.nfssessionhash* %23, %struct.nfssessionhash** %17, align 8
  %24 = load %struct.nfssessionhash*, %struct.nfssessionhash** %17, align 8
  %25 = call i32 @NFSLOCKSESSION(%struct.nfssessionhash* %24)
  %26 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %27 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nfsdsession* @nfsrv_findsession(i32 %28)
  store %struct.nfsdsession* %29, %struct.nfsdsession** %16, align 8
  %30 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %31 = icmp eq %struct.nfsdsession* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load %struct.nfssessionhash*, %struct.nfssessionhash** %17, align 8
  %34 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %33)
  %35 = load i32, i32* @NFSERR_BADSESSION, align 4
  store i32 %35, i32* %8, align 4
  br label %194

36:                                               ; preds = %7
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %39 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %44 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @NFSV4_SLOTS, align 8
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @nfsv4_seqsession(i64 %37, i32 %40, i64 %42, i32 %45, i32* null, i64 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.nfssessionhash*, %struct.nfssessionhash** %17, align 8
  %53 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %52)
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %8, align 4
  br label %194

55:                                               ; preds = %36
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @ND_SAVEREPLY, align 4
  %60 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %61 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %55
  %65 = call i32 (...) @nfsrv_leaseexpiry()
  %66 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %67 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %66, i32 0, i32 1
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %71 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %77 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @ND_IMPLIEDCLID, align 4
  %80 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %81 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %85 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %84, i32 0, i32 1
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = icmp ne %struct.TYPE_13__* %89, null
  br i1 %90, label %91, label %154

91:                                               ; preds = %64
  %92 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %93 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %97 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %96, i32 0, i32 0
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = icmp ne %struct.TYPE_16__* %95, %98
  br i1 %99, label %100, label %154

100:                                              ; preds = %91
  %101 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %102 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @NFSV4CRSESS_CONNBACKCHAN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %100
  %108 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %109 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LCL_DONEBINDCONN, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %107
  %117 = call i32 @NFSD_DEBUG(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %119 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %19, align 8
  %122 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %123 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %122, i32 0, i32 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = call i32 @SVC_ACQUIRE(%struct.TYPE_16__* %124)
  %126 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %127 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %126, i32 0, i32 1
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %135 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %134, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 8
  %138 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %139 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %138, i32 0, i32 0
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %143 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %142, i32 0, i32 0
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %146 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %147, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %149 = icmp ne %struct.TYPE_16__* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %116
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %152 = call i32 @SVC_RELEASE(%struct.TYPE_16__* %151)
  br label %153

153:                                              ; preds = %150, %116
  br label %154

154:                                              ; preds = %153, %107, %100, %91, %64
  %155 = load i64*, i64** %14, align 8
  store i64 0, i64* %155, align 8
  %156 = load %struct.nfsdsession*, %struct.nfsdsession** %16, align 8
  %157 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %156, i32 0, i32 1
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = icmp eq %struct.TYPE_13__* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = load i64, i64* @NFSV4SEQ_CBPATHDOWN, align 8
  %165 = load i64*, i64** %14, align 8
  %166 = load i64, i64* %165, align 8
  %167 = or i64 %166, %164
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %163, %154
  %169 = load %struct.nfssessionhash*, %struct.nfssessionhash** %17, align 8
  %170 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %169)
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @NFSERR_EXPIRED, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load i64, i64* @NFSV4SEQ_EXPIREDALLSTATEREVOKED, align 8
  %176 = load i64*, i64** %14, align 8
  %177 = load i64, i64* %176, align 8
  %178 = or i64 %177, %175
  store i64 %178, i64* %176, align 8
  store i32 0, i32* %18, align 4
  br label %189

179:                                              ; preds = %168
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* @NFSERR_ADMINREVOKED, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i64, i64* @NFSV4SEQ_ADMINSTATEREVOKED, align 8
  %185 = load i64*, i64** %14, align 8
  %186 = load i64, i64* %185, align 8
  %187 = or i64 %186, %184
  store i64 %187, i64* %185, align 8
  store i32 0, i32* %18, align 4
  br label %188

188:                                              ; preds = %183, %179
  br label %189

189:                                              ; preds = %188, %174
  %190 = load i64, i64* @NFSV4_SLOTS, align 8
  %191 = sub nsw i64 %190, 1
  %192 = load i64*, i64** %12, align 8
  store i64 %191, i64* %192, align 8
  %193 = load i64*, i64** %11, align 8
  store i64 %191, i64* %193, align 8
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %189, %51, %32
  %195 = load i32, i32* %8, align 4
  ret i32 %195
}

declare dso_local %struct.nfssessionhash* @NFSSESSIONHASH(i32) #1

declare dso_local i32 @NFSLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local %struct.nfsdsession* @nfsrv_findsession(i32) #1

declare dso_local i32 @NFSUNLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local i32 @nfsv4_seqsession(i64, i32, i64, i32, i32*, i64) #1

declare dso_local i32 @nfsrv_leaseexpiry(...) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*) #1

declare dso_local i32 @SVC_ACQUIRE(%struct.TYPE_16__*) #1

declare dso_local i32 @SVC_RELEASE(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
