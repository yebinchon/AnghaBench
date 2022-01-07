; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_pwrsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_pwrsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211com*, %struct.ieee80211vap*, %struct.ieee80211_psq }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32 (%struct.ieee80211_node.0*, i32)* }
%struct.ieee80211_node.0 = type opaque
%struct.ieee80211_psq = type { i32, i32, i32, %struct.ieee80211_psq_head* }
%struct.ieee80211_psq_head = type { i32, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf*, i32 }

@IEEE80211_MSG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pwr save q overflow, drops %d (size %d)\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@M_ENCAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"age %d\00", align 1
@IEEE80211_MSG_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"save frame with age %d, %u now queued\00", align 1
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_pwrsave(%struct.ieee80211_node* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ieee80211_psq*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.ieee80211_psq_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 3
  store %struct.ieee80211_psq* %15, %struct.ieee80211_psq** %6, align 8
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 2
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  store %struct.ieee80211vap* %18, %struct.ieee80211vap** %7, align 8
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 1
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %20, align 8
  store %struct.ieee80211com* %21, %struct.ieee80211com** %8, align 8
  %22 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %23 = call i32 @IEEE80211_PSQ_LOCK(%struct.ieee80211_psq* %22)
  %24 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %37 = call i32 @IEEE80211_PSQ_UNLOCK(%struct.ieee80211_psq* %36)
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %39 = load i32, i32* @IEEE80211_MSG_ANY, align 4
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %41 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %38, i32 %39, %struct.ieee80211_node* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = call i32 @psq_mfree(%struct.mbuf* %48)
  %50 = load i32, i32* @ENOSPC, align 4
  store i32 %50, i32* %3, align 4
  br label %192

51:                                               ; preds = %2
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = shl i32 %58, 2
  %60 = call i32 @IEEE80211_TU_TO_MS(i32 %59)
  %61 = sdiv i32 %60, 1000
  store i32 %61, i32* %11, align 4
  %62 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @M_ENCAP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %69, i32 0, i32 3
  %71 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %70, align 8
  %72 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %71, i64 0
  store %struct.ieee80211_psq_head* %72, %struct.ieee80211_psq_head** %9, align 8
  br label %78

73:                                               ; preds = %51
  %74 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %74, i32 0, i32 3
  %76 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %75, align 8
  %77 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %76, i64 1
  store %struct.ieee80211_psq_head* %77, %struct.ieee80211_psq_head** %9, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %79, i32 0, i32 1
  %81 = load %struct.mbuf*, %struct.mbuf** %80, align 8
  %82 = icmp eq %struct.mbuf* %81, null
  br i1 %82, label %83, label %133

83:                                               ; preds = %78
  %84 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %85 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %9, align 8
  %86 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %85, i32 0, i32 2
  store %struct.mbuf* %84, %struct.mbuf** %86, align 8
  %87 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %9, align 8
  %88 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %88, i32 0, i32 3
  %90 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %89, align 8
  %91 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %90, i64 1
  %92 = icmp eq %struct.ieee80211_psq_head* %87, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %83
  %94 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %94, i32 0, i32 3
  %96 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %95, align 8
  %97 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %96, i64 0
  %98 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %97, i32 0, i32 2
  %99 = load %struct.mbuf*, %struct.mbuf** %98, align 8
  store %struct.mbuf* %99, %struct.mbuf** %12, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %101 = icmp ne %struct.mbuf* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %104 = call i32 @M_AGE_GET(%struct.mbuf* %103)
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %102, %93
  br label %132

108:                                              ; preds = %83
  %109 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %109, i32 0, i32 3
  %111 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %110, align 8
  %112 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %111, i64 1
  %113 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %112, i32 0, i32 2
  %114 = load %struct.mbuf*, %struct.mbuf** %113, align 8
  store %struct.mbuf* %114, %struct.mbuf** %12, align 8
  %115 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %116 = icmp ne %struct.mbuf* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %108
  %118 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %119 = call i32 @M_AGE_GET(%struct.mbuf* %118)
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %13, align 4
  %122 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %13, align 4
  br label %128

128:                                              ; preds = %126, %125
  %129 = phi i32 [ 0, %125 ], [ %127, %126 ]
  %130 = call i32 @M_AGE_SET(%struct.mbuf* %122, i32 %129)
  br label %131

131:                                              ; preds = %128, %108
  br label %132

132:                                              ; preds = %131, %107
  br label %145

133:                                              ; preds = %78
  %134 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %135 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %9, align 8
  %136 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %135, i32 0, i32 1
  %137 = load %struct.mbuf*, %struct.mbuf** %136, align 8
  %138 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %137, i32 0, i32 1
  store %struct.mbuf* %134, %struct.mbuf** %138, align 8
  %139 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %139, i32 0, i32 2
  %141 = load %struct.mbuf*, %struct.mbuf** %140, align 8
  %142 = call i32 @M_AGE_GET(%struct.mbuf* %141)
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %133, %132
  %146 = load i32, i32* %11, align 4
  %147 = icmp sge i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 @KASSERT(i32 %148, i8* %151)
  %153 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @M_AGE_SET(%struct.mbuf* %153, i32 %154)
  %156 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %157 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %156, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %157, align 8
  %158 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %159 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %9, align 8
  %160 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %159, i32 0, i32 1
  store %struct.mbuf* %158, %struct.mbuf** %160, align 8
  %161 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %9, align 8
  %162 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %166 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  store i32 %168, i32* %10, align 4
  %169 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %6, align 8
  %170 = call i32 @IEEE80211_PSQ_UNLOCK(%struct.ieee80211_psq* %169)
  %171 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %172 = load i32, i32* @IEEE80211_MSG_POWER, align 4
  %173 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %171, i32 %172, %struct.ieee80211_node* %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %191

179:                                              ; preds = %145
  %180 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %181 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %180, i32 0, i32 0
  %182 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %181, align 8
  %183 = icmp ne i32 (%struct.ieee80211_node.0*, i32)* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %186 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %185, i32 0, i32 0
  %187 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %186, align 8
  %188 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %189 = bitcast %struct.ieee80211_node* %188 to %struct.ieee80211_node.0*
  %190 = call i32 %187(%struct.ieee80211_node.0* %189, i32 1)
  br label %191

191:                                              ; preds = %184, %179, %145
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %31
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @IEEE80211_PSQ_LOCK(%struct.ieee80211_psq*) #1

declare dso_local i32 @IEEE80211_PSQ_UNLOCK(%struct.ieee80211_psq*) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32, i32) #1

declare dso_local i32 @psq_mfree(%struct.mbuf*) #1

declare dso_local i32 @IEEE80211_TU_TO_MS(i32) #1

declare dso_local i32 @M_AGE_GET(%struct.mbuf*) #1

declare dso_local i32 @M_AGE_SET(%struct.mbuf*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
