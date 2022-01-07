; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkiq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.dquot = type { i32, i64, i32, i64 }
%struct.inode = type { %struct.dquot** }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NOCRED = common dso_local global %struct.ucred* null, align 8
@FORCE = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@NODQUOT = common dso_local global %struct.dquot* null, align 8
@PINOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"chkiq1\00", align 1
@DQ_INODS = common dso_local global i32 0, align 4
@DQ_MOD = common dso_local global i32 0, align 4
@PRIV_VFS_EXCEEDQUOTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"chkiq2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"chkiq3\00", align 1
@time_second = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"\0A%s: warning, %s inode quota exceeded\0A\00", align 1
@quotatypes = common dso_local global i32* null, align 8
@CHOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chkiq(%struct.inode* %0, i32 %1, %struct.ucred* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dquot*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ucred*, %struct.ucred** %8, align 8
  %16 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %17 = icmp ne %struct.ucred* %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @FORCE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i1 [ true, %4 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %255

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %85, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MAXQUOTAS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %88

38:                                               ; preds = %34
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.dquot**, %struct.dquot*** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dquot*, %struct.dquot** %41, i64 %43
  %45 = load %struct.dquot*, %struct.dquot** %44, align 8
  store %struct.dquot* %45, %struct.dquot** %10, align 8
  %46 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %47 = icmp eq %struct.dquot* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %85

49:                                               ; preds = %38
  %50 = load %struct.dquot*, %struct.dquot** %10, align 8
  %51 = call i32 @DQI_LOCK(%struct.dquot* %50)
  %52 = load %struct.dquot*, %struct.dquot** %10, align 8
  %53 = load i64, i64* @PINOD, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @DQI_WAIT(%struct.dquot* %52, i64 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.dquot*, %struct.dquot** %10, align 8
  %57 = getelementptr inbounds %struct.dquot, %struct.dquot* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.dquot*, %struct.dquot** %10, align 8
  %65 = getelementptr inbounds %struct.dquot, %struct.dquot* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %71

68:                                               ; preds = %49
  %69 = load %struct.dquot*, %struct.dquot** %10, align 8
  %70 = getelementptr inbounds %struct.dquot, %struct.dquot* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i32, i32* @DQ_INODS, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.dquot*, %struct.dquot** %10, align 8
  %75 = getelementptr inbounds %struct.dquot, %struct.dquot* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @DQ_MOD, align 4
  %79 = load %struct.dquot*, %struct.dquot** %10, align 8
  %80 = getelementptr inbounds %struct.dquot, %struct.dquot* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.dquot*, %struct.dquot** %10, align 8
  %84 = call i32 @DQI_UNLOCK(%struct.dquot* %83)
  br label %85

85:                                               ; preds = %71, %48
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %34

88:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %255

89:                                               ; preds = %30
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @FORCE, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.ucred*, %struct.ucred** %8, align 8
  %96 = load i32, i32* @PRIV_VFS_EXCEEDQUOTA, align 4
  %97 = call i64 @priv_check_cred(%struct.ucred* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %14, align 4
  br label %101

100:                                              ; preds = %94, %89
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %100, %99
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %251, %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @MAXQUOTAS, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %254

106:                                              ; preds = %102
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load %struct.dquot**, %struct.dquot*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.dquot*, %struct.dquot** %109, i64 %111
  %113 = load %struct.dquot*, %struct.dquot** %112, align 8
  store %struct.dquot* %113, %struct.dquot** %10, align 8
  %114 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %115 = icmp eq %struct.dquot* %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %251

117:                                              ; preds = %106
  store i32 0, i32* %13, align 4
  %118 = load %struct.dquot*, %struct.dquot** %10, align 8
  %119 = call i32 @DQI_LOCK(%struct.dquot* %118)
  %120 = load %struct.dquot*, %struct.dquot** %10, align 8
  %121 = load i64, i64* @PINOD, align 8
  %122 = add nsw i64 %121, 1
  %123 = call i32 @DQI_WAIT(%struct.dquot* %120, i64 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %190

126:                                              ; preds = %117
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.ucred*, %struct.ucred** %8, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @chkiqchg(%struct.inode* %127, i32 %128, %struct.ucred* %129, i32 %130, i32* %13)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %189

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %173, %151, %134
  %136 = load i32, i32* %11, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %187

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %11, align 4
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 0
  %143 = load %struct.dquot**, %struct.dquot*** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.dquot*, %struct.dquot** %143, i64 %145
  %147 = load %struct.dquot*, %struct.dquot** %146, align 8
  store %struct.dquot* %147, %struct.dquot** %10, align 8
  %148 = load %struct.dquot*, %struct.dquot** %10, align 8
  %149 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %150 = icmp eq %struct.dquot* %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  br label %135

152:                                              ; preds = %138
  %153 = load %struct.dquot*, %struct.dquot** %10, align 8
  %154 = call i32 @DQI_LOCK(%struct.dquot* %153)
  %155 = load %struct.dquot*, %struct.dquot** %10, align 8
  %156 = load i64, i64* @PINOD, align 8
  %157 = add nsw i64 %156, 1
  %158 = call i32 @DQI_WAIT(%struct.dquot* %155, i64 %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %159 = load %struct.dquot*, %struct.dquot** %10, align 8
  %160 = getelementptr inbounds %struct.dquot, %struct.dquot* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %152
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.dquot*, %struct.dquot** %10, align 8
  %167 = getelementptr inbounds %struct.dquot, %struct.dquot* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %173

170:                                              ; preds = %152
  %171 = load %struct.dquot*, %struct.dquot** %10, align 8
  %172 = getelementptr inbounds %struct.dquot, %struct.dquot* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  br label %173

173:                                              ; preds = %170, %164
  %174 = load i32, i32* @DQ_INODS, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.dquot*, %struct.dquot** %10, align 8
  %177 = getelementptr inbounds %struct.dquot, %struct.dquot* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* @DQ_MOD, align 4
  %181 = load %struct.dquot*, %struct.dquot** %10, align 8
  %182 = getelementptr inbounds %struct.dquot, %struct.dquot* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.dquot*, %struct.dquot** %10, align 8
  %186 = call i32 @DQI_UNLOCK(%struct.dquot* %185)
  br label %135

187:                                              ; preds = %135
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %5, align 4
  br label %255

189:                                              ; preds = %126
  br label %190

190:                                              ; preds = %189, %117
  %191 = load %struct.dquot*, %struct.dquot** %10, align 8
  %192 = getelementptr inbounds %struct.dquot, %struct.dquot* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = load %struct.dquot*, %struct.dquot** %10, align 8
  %198 = getelementptr inbounds %struct.dquot, %struct.dquot* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sge i64 %196, %199
  br i1 %200, label %201, label %223

201:                                              ; preds = %190
  %202 = load %struct.dquot*, %struct.dquot** %10, align 8
  %203 = getelementptr inbounds %struct.dquot, %struct.dquot* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = load %struct.dquot*, %struct.dquot** %10, align 8
  %207 = getelementptr inbounds %struct.dquot, %struct.dquot* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp slt i64 %205, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %201
  %211 = load i64, i64* @time_second, align 8
  %212 = load %struct.inode*, %struct.inode** %6, align 8
  %213 = call %struct.TYPE_6__* @ITOUMP(%struct.inode* %212)
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %211, %219
  %221 = load %struct.dquot*, %struct.dquot** %10, align 8
  %222 = getelementptr inbounds %struct.dquot, %struct.dquot* %221, i32 0, i32 3
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %210, %201, %190
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.dquot*, %struct.dquot** %10, align 8
  %226 = getelementptr inbounds %struct.dquot, %struct.dquot* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @DQ_MOD, align 4
  %230 = load %struct.dquot*, %struct.dquot** %10, align 8
  %231 = getelementptr inbounds %struct.dquot, %struct.dquot* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.dquot*, %struct.dquot** %10, align 8
  %235 = call i32 @DQI_UNLOCK(%struct.dquot* %234)
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %223
  %239 = load %struct.inode*, %struct.inode** %6, align 8
  %240 = call %struct.TYPE_5__* @ITOVFS(%struct.inode* %239)
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** @quotatypes, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %243, i32 %248)
  br label %250

250:                                              ; preds = %238, %223
  br label %251

251:                                              ; preds = %250, %116
  %252 = load i32, i32* %11, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %11, align 4
  br label %102

254:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %255

255:                                              ; preds = %254, %187, %88, %29
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @DQI_LOCK(%struct.dquot*) #1

declare dso_local i32 @DQI_WAIT(%struct.dquot*, i64, i8*) #1

declare dso_local i32 @DQI_UNLOCK(%struct.dquot*) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @chkiqchg(%struct.inode*, i32, %struct.ucred*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @ITOUMP(%struct.inode*) #1

declare dso_local i32 @uprintf(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ITOVFS(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
