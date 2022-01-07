; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.TYPE_2__*, %struct.ieee80211_key*, %struct.ieee80211com* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_key = type { i32, i64, i64, i64, i64, i64*, %struct.ieee80211_cipher* }
%struct.ieee80211_cipher = type { i64 }
%struct.ieee80211com = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211_node = type { %struct.ieee80211_key }
%struct.ieee80211req_key = type { i64, i64, i32, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@IEEE80211_KEY_XMIT = common dso_local global i32 0, align 4
@IEEE80211_KEY_RECV = common dso_local global i32 0, align 4
@IEEE80211_KEY_DEFAULT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_NET80211_GETKEY = common dso_local global i32 0, align 4
@IEEE80211_NONQOS_TID = common dso_local global i64 0, align 8
@IEEE80211_CIPHER_TKIP = common dso_local global i64 0, align 8
@IEEE80211_KEYBUF_SIZE = common dso_local global i64 0, align 8
@IEEE80211_MICBUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_getkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getkey(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211req_key, align 8
  %9 = alloca %struct.ieee80211_key*, align 8
  %10 = alloca %struct.ieee80211_cipher*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 3
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %14, align 8
  store %struct.ieee80211com* %15, %struct.ieee80211com** %6, align 8
  %16 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 64
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %170

23:                                               ; preds = %2
  %24 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @copyin(i32 %26, %struct.ieee80211req_key* %8, i32 64)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %3, align 4
  br label %170

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 0
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.ieee80211_node* @ieee80211_find_vap_node(i32* %40, %struct.ieee80211vap* %41, i32 %43)
  store %struct.ieee80211_node* %44, %struct.ieee80211_node** %7, align 8
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %46 = icmp eq %struct.ieee80211_node* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* %3, align 4
  br label %170

49:                                               ; preds = %38
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %50, i32 0, i32 0
  store %struct.ieee80211_key* %51, %struct.ieee80211_key** %9, align 8
  br label %71

52:                                               ; preds = %32
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %170

58:                                               ; preds = %52
  %59 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %59, i32 0, i32 2
  %61 = load %struct.ieee80211_key*, %struct.ieee80211_key** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %61, i64 %62
  store %struct.ieee80211_key* %63, %struct.ieee80211_key** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 7
  %65 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IEEE80211_ADDR_COPY(i32* %64, i32 %69)
  store %struct.ieee80211_node* null, %struct.ieee80211_node** %7, align 8
  br label %71

71:                                               ; preds = %58, %49
  %72 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %72, i32 0, i32 6
  %74 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %73, align 8
  store %struct.ieee80211_cipher* %74, %struct.ieee80211_cipher** %10, align 8
  %75 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %10, align 8
  %76 = getelementptr inbounds %struct.ieee80211_cipher, %struct.ieee80211_cipher* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 6
  store i64 %81, i64* %82, align 8
  %83 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IEEE80211_KEY_XMIT, align 4
  %87 = load i32, i32* @IEEE80211_KEY_RECV, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  %91 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %71
  %99 = load i32, i32* @IEEE80211_KEY_DEFAULT, align 4
  %100 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %98, %71
  %104 = load i32, i32* @curthread, align 4
  %105 = load i32, i32* @PRIV_NET80211_GETKEY, align 4
  %106 = call i64 @priv_check(i32 %104, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %153

108:                                              ; preds = %103
  %109 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %110 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %109, i32 0, i32 5
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* @IEEE80211_NONQOS_TID, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 5
  store i64 %114, i64* %115, align 8
  %116 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %117 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 4
  store i64 %118, i64* %119, align 8
  %120 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %123 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @memcpy(i64 %121, i64 %124, i64 %127)
  %129 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %10, align 8
  %130 = getelementptr inbounds %struct.ieee80211_cipher, %struct.ieee80211_cipher* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IEEE80211_CIPHER_TKIP, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %108
  %135 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %138 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %142 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IEEE80211_KEYBUF_SIZE, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i64, i64* @IEEE80211_MICBUF_SIZE, align 8
  %147 = call i32 @memcpy(i64 %140, i64 %145, i64 %146)
  %148 = load i64, i64* @IEEE80211_MICBUF_SIZE, align 8
  %149 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %148
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %134, %108
  br label %159

153:                                              ; preds = %103
  %154 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 5
  store i64 0, i64* %154, align 8
  %155 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 4
  store i64 0, i64* %155, align 8
  %156 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %8, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @memset(i64 %157, i32 0, i32 8)
  br label %159

159:                                              ; preds = %153, %152
  %160 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %161 = icmp ne %struct.ieee80211_node* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %164 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %167 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @copyout(%struct.ieee80211req_key* %8, i32 %168, i32 64)
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %165, %56, %47, %30, %21
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @copyin(i32, %struct.ieee80211req_key*, i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_find_vap_node(i32*, %struct.ieee80211vap*, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #1

declare dso_local i64 @priv_check(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @copyout(%struct.ieee80211req_key*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
