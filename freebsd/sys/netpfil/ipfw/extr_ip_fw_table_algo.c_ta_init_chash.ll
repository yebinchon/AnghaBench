; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_chash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_chash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_info = type { i32, i32, i32*, i32* }
%struct.chash_cfg = type { i32, i32, i32, i32, i32*, i32* }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ta_lookup_chash_64 = common dso_local global i32 0, align 4
@ta_lookup_chash_aligned = common dso_local global i32 0, align 4
@ta_lookup_chash_slow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i8**, %struct.table_info*, i8*, i32)* @ta_init_chash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_init_chash(%struct.ip_fw_chain* %0, i8** %1, %struct.table_info* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.table_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.chash_cfg*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.table_info* %2, %struct.table_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @M_IPFW, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @malloc(i32 32, i32 %16, i32 %19)
  %21 = bitcast i8* %20 to %struct.chash_cfg*
  store %struct.chash_cfg* %21, %struct.chash_cfg** %15, align 8
  %22 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %23 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %22, i32 0, i32 0
  store i32 32, i32* %23, align 8
  %24 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %25 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %24, i32 0, i32 1
  store i32 128, i32* %25, align 4
  %26 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @chash_parse_opts(%struct.chash_cfg* %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %32 = load i32, i32* @M_IPFW, align 4
  %33 = call i32 @free(%struct.chash_cfg* %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %194

35:                                               ; preds = %5
  %36 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %37 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %36, i32 0, i32 2
  store i32 128, i32* %37, align 8
  %38 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %39 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %38, i32 0, i32 3
  store i32 128, i32* %39, align 4
  %40 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %41 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @M_IPFW, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @malloc(i32 %45, i32 %46, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %53 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %52, i32 0, i32 5
  store i32* %51, i32** %53, align 8
  %54 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %55 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @M_IPFW, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = load i32, i32* @M_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @malloc(i32 %59, i32 %60, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %67 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %66, i32 0, i32 4
  store i32* %65, i32** %67, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %82, %35
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %71 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %76 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @SLIST_INIT(i32* %80)
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %68

85:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %100, %85
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %89 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %94 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @SLIST_INIT(i32* %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %86

103:                                              ; preds = %86
  %104 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %105 = bitcast %struct.chash_cfg* %104 to i8*
  %106 = load i8**, i8*** %8, align 8
  store i8* %105, i8** %106, align 8
  %107 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %108 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.table_info*, %struct.table_info** %9, align 8
  %111 = getelementptr inbounds %struct.table_info, %struct.table_info* %110, i32 0, i32 3
  store i32* %109, i32** %111, align 8
  %112 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %113 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.table_info*, %struct.table_info** %9, align 8
  %116 = getelementptr inbounds %struct.table_info, %struct.table_info* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  %117 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %118 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ta_log2(i32 %119)
  %121 = shl i32 %120, 8
  %122 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %123 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ta_log2(i32 %124)
  %126 = or i32 %121, %125
  store i32 %126, i32* %14, align 4
  %127 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %128 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 64
  br i1 %130, label %131, label %150

131:                                              ; preds = %103
  %132 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %133 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 32, %134
  %136 = shl i32 %135, 24
  %137 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %138 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 128, %139
  %141 = shl i32 %140, 16
  %142 = or i32 %136, %141
  %143 = load i32, i32* %14, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.table_info*, %struct.table_info** %9, align 8
  %146 = getelementptr inbounds %struct.table_info, %struct.table_info* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @ta_lookup_chash_64, align 4
  %148 = load %struct.table_info*, %struct.table_info** %9, align 8
  %149 = getelementptr inbounds %struct.table_info, %struct.table_info* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  br label %193

150:                                              ; preds = %103
  %151 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %152 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = srem i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %150
  %157 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %158 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 32, %159
  %161 = shl i32 %160, 24
  %162 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %163 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 13
  %166 = or i32 %161, %165
  %167 = load i32, i32* %14, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.table_info*, %struct.table_info** %9, align 8
  %170 = getelementptr inbounds %struct.table_info, %struct.table_info* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @ta_lookup_chash_aligned, align 4
  %172 = load %struct.table_info*, %struct.table_info** %9, align 8
  %173 = getelementptr inbounds %struct.table_info, %struct.table_info* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %192

174:                                              ; preds = %150
  %175 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %176 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 32, %177
  %179 = shl i32 %178, 24
  %180 = load %struct.chash_cfg*, %struct.chash_cfg** %15, align 8
  %181 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 16
  %184 = or i32 %179, %183
  %185 = load i32, i32* %14, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.table_info*, %struct.table_info** %9, align 8
  %188 = getelementptr inbounds %struct.table_info, %struct.table_info* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @ta_lookup_chash_slow, align 4
  %190 = load %struct.table_info*, %struct.table_info** %9, align 8
  %191 = getelementptr inbounds %struct.table_info, %struct.table_info* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %174, %156
  br label %193

193:                                              ; preds = %192, %131
  store i32 0, i32* %6, align 4
  br label %194

194:                                              ; preds = %193, %30
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @chash_parse_opts(%struct.chash_cfg*, i8*) #1

declare dso_local i32 @free(%struct.chash_cfg*, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @ta_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
