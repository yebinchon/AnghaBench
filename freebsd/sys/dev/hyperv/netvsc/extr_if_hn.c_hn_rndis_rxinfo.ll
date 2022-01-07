; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rndis_rxinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rndis_rxinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_rxinfo = type { i32, i32, i32, i32 }
%struct.rndis_pktinfo = type { i32, i32, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RNDIS_PKTINFO_SIZE_ALIGNMASK = common dso_local global i32 0, align 4
@NDIS_VLAN_INFO_SIZE = common dso_local global i32 0, align 4
@HN_RXINFO_VLAN = common dso_local global i32 0, align 4
@NDIS_RXCSUM_INFO_SIZE = common dso_local global i32 0, align 4
@HN_RXINFO_CSUM = common dso_local global i32 0, align 4
@HN_NDIS_HASH_VALUE_SIZE = common dso_local global i32 0, align 4
@HN_RXINFO_HASHVAL = common dso_local global i32 0, align 4
@HN_NDIS_HASH_INFO_SIZE = common dso_local global i32 0, align 4
@HN_RXINFO_HASHINF = common dso_local global i32 0, align 4
@HN_RXINFO_ALL = common dso_local global i32 0, align 4
@HN_NDIS_HASH_INFO_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.hn_rxinfo*)* @hn_rndis_rxinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_rndis_rxinfo(i8* %0, i32 %1, %struct.hn_rxinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hn_rxinfo*, align 8
  %8 = alloca %struct.rndis_pktinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hn_rxinfo* %2, %struct.hn_rxinfo** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.rndis_pktinfo*
  store %struct.rndis_pktinfo* %13, %struct.rndis_pktinfo** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %158, %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %167

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 24
  %21 = zext i1 %20 to i32
  %22 = call i64 @__predict_false(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %177

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %29 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @__predict_false(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %177

37:                                               ; preds = %26
  %38 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %39 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %44 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RNDIS_PKTINFO_SIZE_ALIGNMASK, align 4
  %47 = and i32 %45, %46
  %48 = call i64 @__predict_false(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %177

52:                                               ; preds = %37
  %53 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %54 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %57 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @__predict_false(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %4, align 4
  br label %177

65:                                               ; preds = %52
  %66 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %67 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %70 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %11, align 4
  %73 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %74 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %10, align 8
  %76 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %77 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %151 [
    i32 128, label %79
    i32 129, label %97
    i32 130, label %115
    i32 131, label %133
  ]

79:                                               ; preds = %65
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @NDIS_VLAN_INFO_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @__predict_false(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %4, align 4
  br label %177

88:                                               ; preds = %79
  %89 = load i8*, i8** %10, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hn_rxinfo*, %struct.hn_rxinfo** %7, align 8
  %93 = getelementptr inbounds %struct.hn_rxinfo, %struct.hn_rxinfo* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @HN_RXINFO_VLAN, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %152

97:                                               ; preds = %65
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @NDIS_RXCSUM_INFO_SIZE, align 4
  %100 = icmp slt i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @__predict_false(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %4, align 4
  br label %177

106:                                              ; preds = %97
  %107 = load i8*, i8** %10, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hn_rxinfo*, %struct.hn_rxinfo** %7, align 8
  %111 = getelementptr inbounds %struct.hn_rxinfo, %struct.hn_rxinfo* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @HN_RXINFO_CSUM, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %152

115:                                              ; preds = %65
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @HN_NDIS_HASH_VALUE_SIZE, align 4
  %118 = icmp slt i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @__predict_false(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %4, align 4
  br label %177

124:                                              ; preds = %115
  %125 = load i8*, i8** %10, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.hn_rxinfo*, %struct.hn_rxinfo** %7, align 8
  %129 = getelementptr inbounds %struct.hn_rxinfo, %struct.hn_rxinfo* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @HN_RXINFO_HASHVAL, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %152

133:                                              ; preds = %65
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @HN_NDIS_HASH_INFO_SIZE, align 4
  %136 = icmp slt i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @__predict_false(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @EINVAL, align 4
  store i32 %141, i32* %4, align 4
  br label %177

142:                                              ; preds = %133
  %143 = load i8*, i8** %10, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.hn_rxinfo*, %struct.hn_rxinfo** %7, align 8
  %147 = getelementptr inbounds %struct.hn_rxinfo, %struct.hn_rxinfo* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @HN_RXINFO_HASHINF, align 4
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %152

151:                                              ; preds = %65
  br label %158

152:                                              ; preds = %142, %124, %106, %88
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @HN_RXINFO_ALL, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %167

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %160 = bitcast %struct.rndis_pktinfo* %159 to i32*
  %161 = load %struct.rndis_pktinfo*, %struct.rndis_pktinfo** %8, align 8
  %162 = getelementptr inbounds %struct.rndis_pktinfo, %struct.rndis_pktinfo* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = bitcast i32* %165 to %struct.rndis_pktinfo*
  store %struct.rndis_pktinfo* %166, %struct.rndis_pktinfo** %8, align 8
  br label %14

167:                                              ; preds = %156, %14
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @HN_RXINFO_HASHVAL, align 4
  %170 = and i32 %168, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, i32* @HN_NDIS_HASH_INFO_INVALID, align 4
  %174 = load %struct.hn_rxinfo*, %struct.hn_rxinfo** %7, align 8
  %175 = getelementptr inbounds %struct.hn_rxinfo, %struct.hn_rxinfo* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %167
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %140, %122, %104, %86, %63, %50, %35, %24
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @__predict_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
