; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkiqchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkiqchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.dquot** }
%struct.dquot = type { i64, i64, i32, i64, i64 }
%struct.ucred = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64* }

@DQ_INODS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"\0A%s: write failed, %s inode limit reached\0A\00", align 1
@quotatypes = common dso_local global i32* null, align 8
@EDQUOT = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"\0A%s: write failed, %s inode quota exceeded for too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ucred*, i32, i32*)* @chkiqchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkiqchg(%struct.inode* %0, i32 %1, %struct.ucred* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dquot*, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.dquot**, %struct.dquot*** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dquot*, %struct.dquot** %16, i64 %18
  %20 = load %struct.dquot*, %struct.dquot** %19, align 8
  store %struct.dquot* %20, %struct.dquot** %12, align 8
  %21 = load %struct.dquot*, %struct.dquot** %12, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load %struct.dquot*, %struct.dquot** %12, align 8
  %29 = getelementptr inbounds %struct.dquot, %struct.dquot* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %5
  %33 = load %struct.dquot*, %struct.dquot** %12, align 8
  %34 = getelementptr inbounds %struct.dquot, %struct.dquot* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %32
  %38 = load %struct.dquot*, %struct.dquot** %12, align 8
  %39 = getelementptr inbounds %struct.dquot, %struct.dquot* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DQ_INODS, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ucred*, %struct.ucred** %9, align 8
  %49 = getelementptr inbounds %struct.ucred, %struct.ucred* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = load i32, i32* @DQ_INODS, align 4
  %54 = load %struct.dquot*, %struct.dquot** %12, align 8
  %55 = getelementptr inbounds %struct.dquot, %struct.dquot* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.dquot*, %struct.dquot** %12, align 8
  %59 = call i32 @DQI_UNLOCK(%struct.dquot* %58)
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call %struct.TYPE_5__* @ITOVFS(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @quotatypes, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %69)
  %71 = load i32, i32* @EDQUOT, align 4
  store i32 %71, i32* %6, align 4
  br label %165

72:                                               ; preds = %44, %37
  %73 = load %struct.dquot*, %struct.dquot** %12, align 8
  %74 = call i32 @DQI_UNLOCK(%struct.dquot* %73)
  %75 = load i32, i32* @EDQUOT, align 4
  store i32 %75, i32* %6, align 4
  br label %165

76:                                               ; preds = %32, %5
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.dquot*, %struct.dquot** %12, align 8
  %79 = getelementptr inbounds %struct.dquot, %struct.dquot* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %164

82:                                               ; preds = %76
  %83 = load %struct.dquot*, %struct.dquot** %12, align 8
  %84 = getelementptr inbounds %struct.dquot, %struct.dquot* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %164

87:                                               ; preds = %82
  %88 = load %struct.dquot*, %struct.dquot** %12, align 8
  %89 = getelementptr inbounds %struct.dquot, %struct.dquot* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.dquot*, %struct.dquot** %12, align 8
  %92 = getelementptr inbounds %struct.dquot, %struct.dquot* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %87
  %96 = load i64, i64* @time_second, align 8
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = call %struct.TYPE_6__* @ITOUMP(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %96, %104
  %106 = load %struct.dquot*, %struct.dquot** %12, align 8
  %107 = getelementptr inbounds %struct.dquot, %struct.dquot* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ucred*, %struct.ucred** %9, align 8
  %112 = getelementptr inbounds %struct.ucred, %struct.ucred* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %95
  %116 = load i32*, i32** %11, align 8
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %115, %95
  store i32 0, i32* %6, align 4
  br label %165

118:                                              ; preds = %87
  %119 = load i64, i64* @time_second, align 8
  %120 = load %struct.dquot*, %struct.dquot** %12, align 8
  %121 = getelementptr inbounds %struct.dquot, %struct.dquot* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %119, %122
  br i1 %123, label %124, label %163

124:                                              ; preds = %118
  %125 = load %struct.dquot*, %struct.dquot** %12, align 8
  %126 = getelementptr inbounds %struct.dquot, %struct.dquot* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DQ_INODS, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %124
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ucred*, %struct.ucred** %9, align 8
  %136 = getelementptr inbounds %struct.ucred, %struct.ucred* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %131
  %140 = load i32, i32* @DQ_INODS, align 4
  %141 = load %struct.dquot*, %struct.dquot** %12, align 8
  %142 = getelementptr inbounds %struct.dquot, %struct.dquot* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.dquot*, %struct.dquot** %12, align 8
  %146 = call i32 @DQI_UNLOCK(%struct.dquot* %145)
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = call %struct.TYPE_5__* @ITOVFS(%struct.inode* %147)
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** @quotatypes, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @uprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %156)
  %158 = load i32, i32* @EDQUOT, align 4
  store i32 %158, i32* %6, align 4
  br label %165

159:                                              ; preds = %131, %124
  %160 = load %struct.dquot*, %struct.dquot** %12, align 8
  %161 = call i32 @DQI_UNLOCK(%struct.dquot* %160)
  %162 = load i32, i32* @EDQUOT, align 4
  store i32 %162, i32* %6, align 4
  br label %165

163:                                              ; preds = %118
  br label %164

164:                                              ; preds = %163, %82, %76
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %164, %159, %139, %117, %72, %52
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @DQI_UNLOCK(%struct.dquot*) #1

declare dso_local i32 @uprintf(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ITOVFS(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @ITOUMP(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
