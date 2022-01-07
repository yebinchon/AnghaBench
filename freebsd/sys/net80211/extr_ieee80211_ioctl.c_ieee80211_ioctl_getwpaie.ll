; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getwpaie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getwpaie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.ieee80211req_wpaie2 = type { i32, i32, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_IOC_WPAIE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*, i32)* @ieee80211_ioctl_getwpaie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getwpaie(%struct.ieee80211vap* %0, %struct.ieee80211req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.ieee80211req_wpaie2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %181

21:                                               ; preds = %3
  %22 = load i32, i32* @M_TEMP, align 4
  %23 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %24 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.ieee80211req_wpaie2* @IEEE80211_MALLOC(i32 12, i32 %22, i32 %25)
  store %struct.ieee80211req_wpaie2* %26, %struct.ieee80211req_wpaie2** %9, align 8
  %27 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %28 = icmp eq %struct.ieee80211req_wpaie2* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %181

31:                                               ; preds = %21
  %32 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211req_wpaie2, %struct.ieee80211req_wpaie2* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %39 = call i32 @copyin(i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %176

43:                                               ; preds = %31
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %49 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211req_wpaie2, %struct.ieee80211req_wpaie2* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.ieee80211_node* @ieee80211_find_vap_node(i32* %47, %struct.ieee80211vap* %48, i32 %51)
  store %struct.ieee80211_node* %52, %struct.ieee80211_node** %8, align 8
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %54 = icmp eq %struct.ieee80211_node* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @ENOENT, align 4
  store i32 %56, i32* %10, align 4
  br label %176

57:                                               ; preds = %43
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 4, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %77 = getelementptr inbounds %struct.ieee80211req_wpaie2, %struct.ieee80211req_wpaie2* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @memcpy(i32 %78, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %57
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @IEEE80211_IOC_WPAIE2, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %127

89:                                               ; preds = %85
  %90 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %117

95:                                               ; preds = %89
  %96 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ugt i64 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  store i32 4, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %95
  %108 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %109 = getelementptr inbounds %struct.ieee80211req_wpaie2, %struct.ieee80211req_wpaie2* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %112 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @memcpy(i32 %110, i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %107, %89
  %118 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %119 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ugt i64 %121, 12
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %124, i32 0, i32 0
  store i32 12, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %117
  br label %165

127:                                              ; preds = %85
  %128 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %129 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %155

133:                                              ; preds = %127
  %134 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %135 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp ugt i64 %142, 4
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  store i32 4, i32* %13, align 4
  br label %145

145:                                              ; preds = %144, %133
  %146 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %147 = getelementptr inbounds %struct.ieee80211req_wpaie2, %struct.ieee80211req_wpaie2* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %150 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @memcpy(i32 %148, i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %145, %127
  %156 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ugt i64 %159, 4
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %163 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %162, i32 0, i32 0
  store i32 4, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %155
  br label %165

165:                                              ; preds = %164, %126
  %166 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %167 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %166)
  %168 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %169 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %170 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %173 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @copyout(%struct.ieee80211req_wpaie2* %168, i32 %171, i32 %174)
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %165, %55, %42
  %177 = load %struct.ieee80211req_wpaie2*, %struct.ieee80211req_wpaie2** %9, align 8
  %178 = load i32, i32* @M_TEMP, align 4
  %179 = call i32 @IEEE80211_FREE(%struct.ieee80211req_wpaie2* %177, i32 %178)
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %29, %19
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.ieee80211req_wpaie2* @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_find_vap_node(i32*, %struct.ieee80211vap*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @copyout(%struct.ieee80211req_wpaie2*, i32, i32) #1

declare dso_local i32 @IEEE80211_FREE(%struct.ieee80211req_wpaie2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
