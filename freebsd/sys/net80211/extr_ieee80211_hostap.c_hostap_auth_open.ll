; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_hostap_auth_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_hostap_auth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, i32, i32, i32*, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, %struct.TYPE_4__*, %struct.ieee80211_node*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 (%struct.ieee80211vap*)* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"state %d\00", align 1
@IEEE80211_AUTH_SHARED = common dso_local global i64 0, align 8
@IEEE80211_MSG_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"open auth\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bad sta auth mode %u\00", align 1
@M_80211_NODE = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STATUS_ALG = common dso_local global i32 0, align 4
@IEEE80211_AUTH_OPEN_REQUEST = common dso_local global i32 0, align 4
@IEEE80211_NODE_AREF = common dso_local global i32 0, align 4
@IEEE80211_NODE_ASSOCID = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY_RADIUS = common dso_local global i64 0, align 8
@IEEE80211_MSG_ACL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"station authentication defered (radius acl)\00", align 1
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"station authenticated (open)\00", align 1
@IEEE80211_AUTH_8021X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32, i32, i32, i32)* @hostap_auth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_auth_open(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %7, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 4
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %15, align 8
  store %struct.ieee80211vap* %16, %struct.ieee80211vap** %13, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_S_RUN, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %22, i8* %26)
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE80211_AUTH_SHARED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %6
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %35 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %33
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @M_80211_NODE, align 4
  %57 = call i32 @IEEE80211_FREE(i32* %55, i32 %56)
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %52, %33
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %62 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @IEEE80211_STATUS_ALG, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %67, %69
  %71 = call i32 @ieee80211_send_error(%struct.ieee80211_node* %61, i32 %64, i32 %65, i32 %70)
  br label %168

72:                                               ; preds = %6
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @IEEE80211_AUTH_OPEN_REQUEST, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %78 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %168

82:                                               ; preds = %72
  %83 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %84 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %85 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %84, i32 0, i32 2
  %86 = load %struct.ieee80211_node*, %struct.ieee80211_node** %85, align 8
  %87 = icmp eq %struct.ieee80211_node* %83, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %90 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.ieee80211_node* @ieee80211_dup_bss(%struct.ieee80211vap* %89, i32 %92)
  store %struct.ieee80211_node* %93, %struct.ieee80211_node** %7, align 8
  %94 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %95 = icmp eq %struct.ieee80211_node* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %168

97:                                               ; preds = %88
  br label %109

98:                                               ; preds = %82
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IEEE80211_NODE_AREF, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %107 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %106)
  br label %108

108:                                              ; preds = %105, %98
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i32, i32* @IEEE80211_NODE_AREF, align 4
  %111 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %112 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @IEEE80211_NODE_ASSOCID, align 4
  %116 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %121 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %124, label %145

124:                                              ; preds = %109
  %125 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %126 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64 (%struct.ieee80211vap*)*, i64 (%struct.ieee80211vap*)** %128, align 8
  %130 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %131 = call i64 %129(%struct.ieee80211vap* %130)
  %132 = load i64, i64* @IEEE80211_MACCMD_POLICY_RADIUS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %124
  %135 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %136 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %137 = load i32, i32* @IEEE80211_MSG_ACL, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %135, i32 %138, i32 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %143 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %144 = call i32 @ieee80211_notify_node_auth(%struct.ieee80211_node* %143)
  br label %168

145:                                              ; preds = %124, %109
  %146 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %147 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  %150 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %146, i32 %147, i32 %149)
  %151 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %152 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %153 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %156 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %151, i32 %154, i32 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %159 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %160 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IEEE80211_AUTH_8021X, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %145
  %165 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %166 = call i32 @ieee80211_node_authorize(%struct.ieee80211_node* %165)
  br label %167

167:                                              ; preds = %164, %145
  br label %168

168:                                              ; preds = %60, %76, %96, %167, %134
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @IEEE80211_FREE(i32*, i32) #1

declare dso_local i32 @ieee80211_send_error(%struct.ieee80211_node*, i32, i32, i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_dup_bss(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*) #1

declare dso_local i32 @ieee80211_notify_node_auth(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_authorize(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
