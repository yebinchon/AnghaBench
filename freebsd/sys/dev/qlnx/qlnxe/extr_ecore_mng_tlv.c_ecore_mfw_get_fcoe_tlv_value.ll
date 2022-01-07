; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mng_tlv.c_ecore_mfw_get_fcoe_tlv_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mng_tlv.c_ecore_mfw_get_fcoe_tlv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_drv_tlv_hdr = type { i32 }
%struct.ecore_mfw_tlv_fcoe = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_tlv_parsed_buf = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_drv_tlv_hdr*, %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_tlv_parsed_buf*)* @ecore_mfw_get_fcoe_tlv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mfw_get_fcoe_tlv_value(%struct.ecore_drv_tlv_hdr* %0, %struct.ecore_mfw_tlv_fcoe* %1, %struct.ecore_tlv_parsed_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_drv_tlv_hdr*, align 8
  %6 = alloca %struct.ecore_mfw_tlv_fcoe*, align 8
  %7 = alloca %struct.ecore_tlv_parsed_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.ecore_drv_tlv_hdr* %0, %struct.ecore_drv_tlv_hdr** %5, align 8
  store %struct.ecore_mfw_tlv_fcoe* %1, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  store %struct.ecore_tlv_parsed_buf* %2, %struct.ecore_tlv_parsed_buf** %7, align 8
  %23 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %1226 [
    i32 136, label %26
    i32 156, label %38
    i32 157, label %50
    i32 243, label %62
    i32 247, label %74
    i32 260, label %86
    i32 190, label %98
    i32 189, label %110
    i32 133, label %122
    i32 131, label %134
    i32 132, label %146
    i32 128, label %158
    i32 134, label %170
    i32 135, label %182
    i32 160, label %194
    i32 164, label %206
    i32 163, label %218
    i32 231, label %230
    i32 239, label %242
    i32 214, label %254
    i32 242, label %266
    i32 158, label %278
    i32 129, label %290
    i32 236, label %302
    i32 240, label %314
    i32 238, label %326
    i32 241, label %338
    i32 235, label %350
    i32 237, label %362
    i32 248, label %374
    i32 258, label %386
    i32 256, label %386
    i32 254, label %386
    i32 252, label %386
    i32 250, label %386
    i32 257, label %410
    i32 255, label %410
    i32 253, label %410
    i32 251, label %410
    i32 249, label %410
    i32 196, label %424
    i32 197, label %436
    i32 162, label %448
    i32 246, label %460
    i32 259, label %472
    i32 225, label %484
    i32 224, label %484
    i32 223, label %484
    i32 222, label %484
    i32 219, label %507
    i32 230, label %512
    i32 229, label %512
    i32 228, label %512
    i32 227, label %512
    i32 226, label %535
    i32 221, label %540
    i32 220, label %552
    i32 234, label %557
    i32 233, label %569
    i32 232, label %581
    i32 165, label %593
    i32 167, label %605
    i32 166, label %617
    i32 185, label %629
    i32 181, label %629
    i32 177, label %629
    i32 173, label %629
    i32 169, label %629
    i32 184, label %653
    i32 180, label %653
    i32 176, label %653
    i32 172, label %653
    i32 168, label %653
    i32 187, label %667
    i32 183, label %667
    i32 179, label %667
    i32 175, label %667
    i32 171, label %667
    i32 186, label %691
    i32 182, label %691
    i32 178, label %691
    i32 174, label %691
    i32 170, label %691
    i32 211, label %705
    i32 199, label %717
    i32 198, label %729
    i32 209, label %741
    i32 207, label %741
    i32 205, label %741
    i32 203, label %741
    i32 201, label %741
    i32 208, label %765
    i32 206, label %765
    i32 204, label %765
    i32 202, label %765
    i32 200, label %765
    i32 210, label %779
    i32 262, label %791
    i32 161, label %803
    i32 261, label %815
    i32 263, label %827
    i32 265, label %839
    i32 264, label %851
    i32 275, label %863
    i32 273, label %863
    i32 271, label %863
    i32 269, label %863
    i32 267, label %863
    i32 274, label %887
    i32 272, label %887
    i32 270, label %887
    i32 268, label %887
    i32 266, label %887
    i32 159, label %901
    i32 218, label %913
    i32 217, label %913
    i32 216, label %913
    i32 215, label %913
    i32 193, label %936
    i32 276, label %948
    i32 130, label %960
    i32 191, label %972
    i32 192, label %984
    i32 188, label %996
    i32 194, label %1008
    i32 195, label %1020
    i32 212, label %1032
    i32 213, label %1044
    i32 245, label %1056
    i32 244, label %1068
    i32 143, label %1080
    i32 142, label %1092
    i32 144, label %1104
    i32 140, label %1116
    i32 141, label %1128
    i32 139, label %1140
    i32 137, label %1152
    i32 145, label %1164
    i32 138, label %1176
    i32 150, label %1188
    i32 149, label %1188
    i32 148, label %1188
    i32 147, label %1188
    i32 146, label %1188
    i32 155, label %1212
    i32 154, label %1212
    i32 153, label %1212
    i32 152, label %1212
    i32 151, label %1212
  ]

26:                                               ; preds = %3
  %27 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %27, i32 0, i32 174
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %32, i32 0, i32 173
  %34 = bitcast i32* %33 to i64*
  %35 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %36 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %35, i32 0, i32 0
  store i64* %34, i64** %36, align 8
  store i32 4, i32* %4, align 4
  br label %1228

37:                                               ; preds = %26
  br label %1227

38:                                               ; preds = %3
  %39 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %40 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %39, i32 0, i32 172
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %44, i32 0, i32 171
  %46 = bitcast i32* %45 to i64*
  %47 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %48 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %47, i32 0, i32 0
  store i64* %46, i64** %48, align 8
  store i32 4, i32* %4, align 4
  br label %1228

49:                                               ; preds = %38
  br label %1227

50:                                               ; preds = %3
  %51 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %52 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %51, i32 0, i32 170
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %57 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %56, i32 0, i32 169
  %58 = bitcast i32* %57 to i64*
  %59 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %60 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %59, i32 0, i32 0
  store i64* %58, i64** %60, align 8
  store i32 4, i32* %4, align 4
  br label %1228

61:                                               ; preds = %50
  br label %1227

62:                                               ; preds = %3
  %63 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %64 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %63, i32 0, i32 168
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %68, i32 0, i32 167
  %70 = bitcast i32* %69 to i64*
  %71 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %72 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %71, i32 0, i32 0
  store i64* %70, i64** %72, align 8
  store i32 4, i32* %4, align 4
  br label %1228

73:                                               ; preds = %62
  br label %1227

74:                                               ; preds = %3
  %75 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %75, i32 0, i32 166
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %81 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %80, i32 0, i32 165
  %82 = bitcast i32* %81 to i64*
  %83 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %84 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %83, i32 0, i32 0
  store i64* %82, i64** %84, align 8
  store i32 4, i32* %4, align 4
  br label %1228

85:                                               ; preds = %74
  br label %1227

86:                                               ; preds = %3
  %87 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %88 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %87, i32 0, i32 164
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %92, i32 0, i32 163
  %94 = bitcast i32* %93 to i64*
  %95 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %96 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %95, i32 0, i32 0
  store i64* %94, i64** %96, align 8
  store i32 4, i32* %4, align 4
  br label %1228

97:                                               ; preds = %86
  br label %1227

98:                                               ; preds = %3
  %99 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %100 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %99, i32 0, i32 162
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %105 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %104, i32 0, i32 161
  %106 = bitcast i32* %105 to i64*
  %107 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %108 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %107, i32 0, i32 0
  store i64* %106, i64** %108, align 8
  store i32 4, i32* %4, align 4
  br label %1228

109:                                              ; preds = %98
  br label %1227

110:                                              ; preds = %3
  %111 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %112 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %111, i32 0, i32 160
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %117 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %116, i32 0, i32 159
  %118 = bitcast i32* %117 to i64*
  %119 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %120 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %119, i32 0, i32 0
  store i64* %118, i64** %120, align 8
  store i32 4, i32* %4, align 4
  br label %1228

121:                                              ; preds = %110
  br label %1227

122:                                              ; preds = %3
  %123 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %124 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %123, i32 0, i32 158
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %129 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %128, i32 0, i32 157
  %130 = bitcast i32* %129 to i64*
  %131 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %132 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %131, i32 0, i32 0
  store i64* %130, i64** %132, align 8
  store i32 4, i32* %4, align 4
  br label %1228

133:                                              ; preds = %122
  br label %1227

134:                                              ; preds = %3
  %135 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %136 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %135, i32 0, i32 156
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %141 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %140, i32 0, i32 155
  %142 = bitcast i32* %141 to i64*
  %143 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %144 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %143, i32 0, i32 0
  store i64* %142, i64** %144, align 8
  store i32 4, i32* %4, align 4
  br label %1228

145:                                              ; preds = %134
  br label %1227

146:                                              ; preds = %3
  %147 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %148 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %147, i32 0, i32 154
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %153 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %152, i32 0, i32 153
  %154 = bitcast i32* %153 to i64*
  %155 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %156 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %155, i32 0, i32 0
  store i64* %154, i64** %156, align 8
  store i32 4, i32* %4, align 4
  br label %1228

157:                                              ; preds = %146
  br label %1227

158:                                              ; preds = %3
  %159 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %160 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %159, i32 0, i32 152
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %165 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %164, i32 0, i32 151
  %166 = bitcast i32* %165 to i64*
  %167 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %168 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %167, i32 0, i32 0
  store i64* %166, i64** %168, align 8
  store i32 4, i32* %4, align 4
  br label %1228

169:                                              ; preds = %158
  br label %1227

170:                                              ; preds = %3
  %171 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %172 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %171, i32 0, i32 150
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %177 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %176, i32 0, i32 149
  %178 = bitcast i32* %177 to i64*
  %179 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %180 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %179, i32 0, i32 0
  store i64* %178, i64** %180, align 8
  store i32 4, i32* %4, align 4
  br label %1228

181:                                              ; preds = %170
  br label %1227

182:                                              ; preds = %3
  %183 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %184 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %183, i32 0, i32 148
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %189 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %188, i32 0, i32 147
  %190 = bitcast i32* %189 to i64*
  %191 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %192 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %191, i32 0, i32 0
  store i64* %190, i64** %192, align 8
  store i32 4, i32* %4, align 4
  br label %1228

193:                                              ; preds = %182
  br label %1227

194:                                              ; preds = %3
  %195 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %196 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %195, i32 0, i32 146
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %201 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %200, i32 0, i32 145
  %202 = bitcast i32* %201 to i64*
  %203 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %204 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %203, i32 0, i32 0
  store i64* %202, i64** %204, align 8
  store i32 4, i32* %4, align 4
  br label %1228

205:                                              ; preds = %194
  br label %1227

206:                                              ; preds = %3
  %207 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %208 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %207, i32 0, i32 144
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %213 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %212, i32 0, i32 143
  %214 = bitcast i32* %213 to i64*
  %215 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %216 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %215, i32 0, i32 0
  store i64* %214, i64** %216, align 8
  store i32 4, i32* %4, align 4
  br label %1228

217:                                              ; preds = %206
  br label %1227

218:                                              ; preds = %3
  %219 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %220 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %219, i32 0, i32 142
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %225 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %224, i32 0, i32 141
  %226 = bitcast i32* %225 to i64*
  %227 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %228 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %227, i32 0, i32 0
  store i64* %226, i64** %228, align 8
  store i32 4, i32* %4, align 4
  br label %1228

229:                                              ; preds = %218
  br label %1227

230:                                              ; preds = %3
  %231 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %232 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %231, i32 0, i32 140
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %230
  %236 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %237 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %236, i32 0, i32 139
  %238 = bitcast i32* %237 to i64*
  %239 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %240 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %239, i32 0, i32 0
  store i64* %238, i64** %240, align 8
  store i32 4, i32* %4, align 4
  br label %1228

241:                                              ; preds = %230
  br label %1227

242:                                              ; preds = %3
  %243 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %244 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %243, i32 0, i32 138
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %242
  %248 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %249 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %248, i32 0, i32 137
  %250 = bitcast i32* %249 to i64*
  %251 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %252 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %251, i32 0, i32 0
  store i64* %250, i64** %252, align 8
  store i32 4, i32* %4, align 4
  br label %1228

253:                                              ; preds = %242
  br label %1227

254:                                              ; preds = %3
  %255 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %256 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %255, i32 0, i32 136
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %254
  %260 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %261 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %260, i32 0, i32 135
  %262 = bitcast i32* %261 to i64*
  %263 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %264 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %263, i32 0, i32 0
  store i64* %262, i64** %264, align 8
  store i32 4, i32* %4, align 4
  br label %1228

265:                                              ; preds = %254
  br label %1227

266:                                              ; preds = %3
  %267 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %268 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %267, i32 0, i32 134
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %273 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %272, i32 0, i32 133
  %274 = bitcast i32* %273 to i64*
  %275 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %276 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %275, i32 0, i32 0
  store i64* %274, i64** %276, align 8
  store i32 4, i32* %4, align 4
  br label %1228

277:                                              ; preds = %266
  br label %1227

278:                                              ; preds = %3
  %279 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %280 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %279, i32 0, i32 132
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %285 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %284, i32 0, i32 131
  %286 = bitcast i32* %285 to i64*
  %287 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %288 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %287, i32 0, i32 0
  store i64* %286, i64** %288, align 8
  store i32 4, i32* %4, align 4
  br label %1228

289:                                              ; preds = %278
  br label %1227

290:                                              ; preds = %3
  %291 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %292 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %291, i32 0, i32 130
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %290
  %296 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %297 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %296, i32 0, i32 129
  %298 = bitcast i32* %297 to i64*
  %299 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %300 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %299, i32 0, i32 0
  store i64* %298, i64** %300, align 8
  store i32 4, i32* %4, align 4
  br label %1228

301:                                              ; preds = %290
  br label %1227

302:                                              ; preds = %3
  %303 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %304 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %303, i32 0, i32 128
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %309 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %308, i32 0, i32 127
  %310 = bitcast i32* %309 to i64*
  %311 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %312 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %311, i32 0, i32 0
  store i64* %310, i64** %312, align 8
  store i32 4, i32* %4, align 4
  br label %1228

313:                                              ; preds = %302
  br label %1227

314:                                              ; preds = %3
  %315 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %316 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %315, i32 0, i32 126
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %321 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %320, i32 0, i32 125
  %322 = bitcast i32* %321 to i64*
  %323 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %324 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %323, i32 0, i32 0
  store i64* %322, i64** %324, align 8
  store i32 4, i32* %4, align 4
  br label %1228

325:                                              ; preds = %314
  br label %1227

326:                                              ; preds = %3
  %327 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %328 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %327, i32 0, i32 124
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %326
  %332 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %333 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %332, i32 0, i32 123
  %334 = bitcast i32* %333 to i64*
  %335 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %336 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %335, i32 0, i32 0
  store i64* %334, i64** %336, align 8
  store i32 4, i32* %4, align 4
  br label %1228

337:                                              ; preds = %326
  br label %1227

338:                                              ; preds = %3
  %339 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %340 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %339, i32 0, i32 122
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %338
  %344 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %345 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %344, i32 0, i32 121
  %346 = bitcast i32* %345 to i64*
  %347 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %348 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %347, i32 0, i32 0
  store i64* %346, i64** %348, align 8
  store i32 4, i32* %4, align 4
  br label %1228

349:                                              ; preds = %338
  br label %1227

350:                                              ; preds = %3
  %351 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %352 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %351, i32 0, i32 120
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  %356 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %357 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %356, i32 0, i32 119
  %358 = bitcast i32* %357 to i64*
  %359 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %360 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %359, i32 0, i32 0
  store i64* %358, i64** %360, align 8
  store i32 4, i32* %4, align 4
  br label %1228

361:                                              ; preds = %350
  br label %1227

362:                                              ; preds = %3
  %363 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %364 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %363, i32 0, i32 118
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %362
  %368 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %369 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %368, i32 0, i32 117
  %370 = bitcast i32* %369 to i64*
  %371 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %372 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %371, i32 0, i32 0
  store i64* %370, i64** %372, align 8
  store i32 4, i32* %4, align 4
  br label %1228

373:                                              ; preds = %362
  br label %1227

374:                                              ; preds = %3
  %375 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %376 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %375, i32 0, i32 116
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %374
  %380 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %381 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %380, i32 0, i32 115
  %382 = bitcast i32* %381 to i64*
  %383 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %384 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %383, i32 0, i32 0
  store i64* %382, i64** %384, align 8
  store i32 4, i32* %4, align 4
  br label %1228

385:                                              ; preds = %374
  br label %1227

386:                                              ; preds = %3, %3, %3, %3, %3
  %387 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %388 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = sub nsw i32 %389, 258
  %391 = sdiv i32 %390, 2
  %392 = sext i32 %391 to i64
  store i64 %392, i64* %8, align 8
  %393 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %394 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %393, i32 0, i32 114
  %395 = load i32*, i32** %394, align 8
  %396 = load i64, i64* %8, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %386
  %401 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %402 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %401, i32 0, i32 113
  %403 = load i32*, i32** %402, align 8
  %404 = load i64, i64* %8, align 8
  %405 = getelementptr inbounds i32, i32* %403, i64 %404
  %406 = bitcast i32* %405 to i64*
  %407 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %408 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %407, i32 0, i32 0
  store i64* %406, i64** %408, align 8
  store i32 4, i32* %4, align 4
  br label %1228

409:                                              ; preds = %386
  br label %1227

410:                                              ; preds = %3, %3, %3, %3, %3
  %411 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %412 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %413, 257
  %415 = sdiv i32 %414, 2
  %416 = sext i32 %415 to i64
  store i64 %416, i64* %9, align 8
  %417 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %418 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %417, i32 0, i32 112
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* %9, align 8
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  %422 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %423 = call i32 @ecore_mfw_get_tlv_time_value(i32* %421, %struct.ecore_tlv_parsed_buf* %422)
  store i32 %423, i32* %4, align 4
  br label %1228

424:                                              ; preds = %3
  %425 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %426 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %425, i32 0, i32 111
  %427 = load i32, i32* %426, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %424
  %430 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %431 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %430, i32 0, i32 110
  %432 = bitcast i32* %431 to i64*
  %433 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %434 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %433, i32 0, i32 0
  store i64* %432, i64** %434, align 8
  store i32 4, i32* %4, align 4
  br label %1228

435:                                              ; preds = %424
  br label %1227

436:                                              ; preds = %3
  %437 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %438 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %437, i32 0, i32 109
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %447

441:                                              ; preds = %436
  %442 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %443 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %442, i32 0, i32 108
  %444 = bitcast i32* %443 to i64*
  %445 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %446 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %445, i32 0, i32 0
  store i64* %444, i64** %446, align 8
  store i32 4, i32* %4, align 4
  br label %1228

447:                                              ; preds = %436
  br label %1227

448:                                              ; preds = %3
  %449 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %450 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %449, i32 0, i32 107
  %451 = load i32, i32* %450, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %448
  %454 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %455 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %454, i32 0, i32 106
  %456 = bitcast i32* %455 to i64*
  %457 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %458 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %457, i32 0, i32 0
  store i64* %456, i64** %458, align 8
  store i32 4, i32* %4, align 4
  br label %1228

459:                                              ; preds = %448
  br label %1227

460:                                              ; preds = %3
  %461 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %462 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %461, i32 0, i32 105
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %471

465:                                              ; preds = %460
  %466 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %467 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %466, i32 0, i32 104
  %468 = bitcast i32* %467 to i64*
  %469 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %470 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %469, i32 0, i32 0
  store i64* %468, i64** %470, align 8
  store i32 4, i32* %4, align 4
  br label %1228

471:                                              ; preds = %460
  br label %1227

472:                                              ; preds = %3
  %473 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %474 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %473, i32 0, i32 103
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %483

477:                                              ; preds = %472
  %478 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %479 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %478, i32 0, i32 102
  %480 = bitcast i32* %479 to i64*
  %481 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %482 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %481, i32 0, i32 0
  store i64* %480, i64** %482, align 8
  store i32 4, i32* %4, align 4
  br label %1228

483:                                              ; preds = %472
  br label %1227

484:                                              ; preds = %3, %3, %3, %3
  %485 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %486 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = sub nsw i32 %487, 225
  %489 = sext i32 %488 to i64
  store i64 %489, i64* %10, align 8
  %490 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %491 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %490, i32 0, i32 101
  %492 = load i32*, i32** %491, align 8
  %493 = load i64, i64* %10, align 8
  %494 = getelementptr inbounds i32, i32* %492, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %506

497:                                              ; preds = %484
  %498 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %499 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %498, i32 0, i32 100
  %500 = load i32*, i32** %499, align 8
  %501 = load i64, i64* %10, align 8
  %502 = getelementptr inbounds i32, i32* %500, i64 %501
  %503 = bitcast i32* %502 to i64*
  %504 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %505 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %504, i32 0, i32 0
  store i64* %503, i64** %505, align 8
  store i32 4, i32* %4, align 4
  br label %1228

506:                                              ; preds = %484
  br label %1227

507:                                              ; preds = %3
  %508 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %509 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %508, i32 0, i32 99
  %510 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %511 = call i32 @ecore_mfw_get_tlv_time_value(i32* %509, %struct.ecore_tlv_parsed_buf* %510)
  store i32 %511, i32* %4, align 4
  br label %1228

512:                                              ; preds = %3, %3, %3, %3
  %513 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %514 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = sub nsw i32 %515, 230
  %517 = sext i32 %516 to i64
  store i64 %517, i64* %11, align 8
  %518 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %519 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %518, i32 0, i32 98
  %520 = load i32*, i32** %519, align 8
  %521 = load i64, i64* %11, align 8
  %522 = getelementptr inbounds i32, i32* %520, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %534

525:                                              ; preds = %512
  %526 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %527 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %526, i32 0, i32 97
  %528 = load i32*, i32** %527, align 8
  %529 = load i64, i64* %11, align 8
  %530 = getelementptr inbounds i32, i32* %528, i64 %529
  %531 = bitcast i32* %530 to i64*
  %532 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %533 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %532, i32 0, i32 0
  store i64* %531, i64** %533, align 8
  store i32 4, i32* %4, align 4
  br label %1228

534:                                              ; preds = %512
  br label %1227

535:                                              ; preds = %3
  %536 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %537 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %536, i32 0, i32 96
  %538 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %539 = call i32 @ecore_mfw_get_tlv_time_value(i32* %537, %struct.ecore_tlv_parsed_buf* %538)
  store i32 %539, i32* %4, align 4
  br label %1228

540:                                              ; preds = %3
  %541 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %542 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %541, i32 0, i32 95
  %543 = load i32, i32* %542, align 8
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %551

545:                                              ; preds = %540
  %546 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %547 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %546, i32 0, i32 94
  %548 = bitcast i32* %547 to i64*
  %549 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %550 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %549, i32 0, i32 0
  store i64* %548, i64** %550, align 8
  store i32 4, i32* %4, align 4
  br label %1228

551:                                              ; preds = %540
  br label %1227

552:                                              ; preds = %3
  %553 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %554 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %553, i32 0, i32 93
  %555 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %556 = call i32 @ecore_mfw_get_tlv_time_value(i32* %554, %struct.ecore_tlv_parsed_buf* %555)
  store i32 %556, i32* %4, align 4
  br label %1228

557:                                              ; preds = %3
  %558 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %559 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %558, i32 0, i32 92
  %560 = load i32, i32* %559, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %568

562:                                              ; preds = %557
  %563 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %564 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %563, i32 0, i32 91
  %565 = bitcast i32* %564 to i64*
  %566 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %567 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %566, i32 0, i32 0
  store i64* %565, i64** %567, align 8
  store i32 4, i32* %4, align 4
  br label %1228

568:                                              ; preds = %557
  br label %1227

569:                                              ; preds = %3
  %570 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %571 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %570, i32 0, i32 90
  %572 = load i32, i32* %571, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %580

574:                                              ; preds = %569
  %575 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %576 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %575, i32 0, i32 89
  %577 = bitcast i32* %576 to i64*
  %578 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %579 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %578, i32 0, i32 0
  store i64* %577, i64** %579, align 8
  store i32 4, i32* %4, align 4
  br label %1228

580:                                              ; preds = %569
  br label %1227

581:                                              ; preds = %3
  %582 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %583 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %582, i32 0, i32 88
  %584 = load i32, i32* %583, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %592

586:                                              ; preds = %581
  %587 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %588 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %587, i32 0, i32 87
  %589 = bitcast i32* %588 to i64*
  %590 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %591 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %590, i32 0, i32 0
  store i64* %589, i64** %591, align 8
  store i32 4, i32* %4, align 4
  br label %1228

592:                                              ; preds = %581
  br label %1227

593:                                              ; preds = %3
  %594 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %595 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %594, i32 0, i32 86
  %596 = load i32, i32* %595, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %604

598:                                              ; preds = %593
  %599 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %600 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %599, i32 0, i32 85
  %601 = bitcast i32* %600 to i64*
  %602 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %603 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %602, i32 0, i32 0
  store i64* %601, i64** %603, align 8
  store i32 4, i32* %4, align 4
  br label %1228

604:                                              ; preds = %593
  br label %1227

605:                                              ; preds = %3
  %606 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %607 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %606, i32 0, i32 84
  %608 = load i32, i32* %607, align 4
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %616

610:                                              ; preds = %605
  %611 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %612 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %611, i32 0, i32 83
  %613 = bitcast i32* %612 to i64*
  %614 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %615 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %614, i32 0, i32 0
  store i64* %613, i64** %615, align 8
  store i32 4, i32* %4, align 4
  br label %1228

616:                                              ; preds = %605
  br label %1227

617:                                              ; preds = %3
  %618 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %619 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %618, i32 0, i32 82
  %620 = load i32, i32* %619, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %628

622:                                              ; preds = %617
  %623 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %624 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %623, i32 0, i32 81
  %625 = bitcast i32* %624 to i64*
  %626 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %627 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %626, i32 0, i32 0
  store i64* %625, i64** %627, align 8
  store i32 4, i32* %4, align 4
  br label %1228

628:                                              ; preds = %617
  br label %1227

629:                                              ; preds = %3, %3, %3, %3, %3
  %630 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %631 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 4
  %633 = sub nsw i32 %632, 185
  %634 = sdiv i32 %633, 2
  %635 = sext i32 %634 to i64
  store i64 %635, i64* %12, align 8
  %636 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %637 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %636, i32 0, i32 80
  %638 = load i32*, i32** %637, align 8
  %639 = load i64, i64* %12, align 8
  %640 = getelementptr inbounds i32, i32* %638, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %652

643:                                              ; preds = %629
  %644 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %645 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %644, i32 0, i32 79
  %646 = load i32*, i32** %645, align 8
  %647 = load i64, i64* %12, align 8
  %648 = getelementptr inbounds i32, i32* %646, i64 %647
  %649 = bitcast i32* %648 to i64*
  %650 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %651 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %650, i32 0, i32 0
  store i64* %649, i64** %651, align 8
  store i32 4, i32* %4, align 4
  br label %1228

652:                                              ; preds = %629
  br label %1227

653:                                              ; preds = %3, %3, %3, %3, %3
  %654 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %655 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 4
  %657 = sub nsw i32 %656, 184
  %658 = sdiv i32 %657, 2
  %659 = sext i32 %658 to i64
  store i64 %659, i64* %13, align 8
  %660 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %661 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %660, i32 0, i32 78
  %662 = load i32*, i32** %661, align 8
  %663 = load i64, i64* %13, align 8
  %664 = getelementptr inbounds i32, i32* %662, i64 %663
  %665 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %666 = call i32 @ecore_mfw_get_tlv_time_value(i32* %664, %struct.ecore_tlv_parsed_buf* %665)
  store i32 %666, i32* %4, align 4
  br label %1228

667:                                              ; preds = %3, %3, %3, %3, %3
  %668 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %669 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = sub nsw i32 %670, 187
  %672 = sdiv i32 %671, 2
  %673 = sext i32 %672 to i64
  store i64 %673, i64* %14, align 8
  %674 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %675 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %674, i32 0, i32 77
  %676 = load i32*, i32** %675, align 8
  %677 = load i64, i64* %14, align 8
  %678 = getelementptr inbounds i32, i32* %676, i64 %677
  %679 = load i32, i32* %678, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %690

681:                                              ; preds = %667
  %682 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %683 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %682, i32 0, i32 76
  %684 = load i32*, i32** %683, align 8
  %685 = load i64, i64* %14, align 8
  %686 = getelementptr inbounds i32, i32* %684, i64 %685
  %687 = bitcast i32* %686 to i64*
  %688 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %689 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %688, i32 0, i32 0
  store i64* %687, i64** %689, align 8
  store i32 4, i32* %4, align 4
  br label %1228

690:                                              ; preds = %667
  br label %1227

691:                                              ; preds = %3, %3, %3, %3, %3
  %692 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %693 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 4
  %695 = sub nsw i32 %694, 186
  %696 = sdiv i32 %695, 2
  %697 = sext i32 %696 to i64
  store i64 %697, i64* %15, align 8
  %698 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %699 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %698, i32 0, i32 75
  %700 = load i32*, i32** %699, align 8
  %701 = load i64, i64* %15, align 8
  %702 = getelementptr inbounds i32, i32* %700, i64 %701
  %703 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %704 = call i32 @ecore_mfw_get_tlv_time_value(i32* %702, %struct.ecore_tlv_parsed_buf* %703)
  store i32 %704, i32* %4, align 4
  br label %1228

705:                                              ; preds = %3
  %706 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %707 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %706, i32 0, i32 74
  %708 = load i32, i32* %707, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %716

710:                                              ; preds = %705
  %711 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %712 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %711, i32 0, i32 73
  %713 = bitcast i32* %712 to i64*
  %714 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %715 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %714, i32 0, i32 0
  store i64* %713, i64** %715, align 8
  store i32 4, i32* %4, align 4
  br label %1228

716:                                              ; preds = %705
  br label %1227

717:                                              ; preds = %3
  %718 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %719 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %718, i32 0, i32 72
  %720 = load i32, i32* %719, align 4
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %722, label %728

722:                                              ; preds = %717
  %723 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %724 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %723, i32 0, i32 71
  %725 = bitcast i32* %724 to i64*
  %726 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %727 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %726, i32 0, i32 0
  store i64* %725, i64** %727, align 8
  store i32 4, i32* %4, align 4
  br label %1228

728:                                              ; preds = %717
  br label %1227

729:                                              ; preds = %3
  %730 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %731 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %730, i32 0, i32 70
  %732 = load i32, i32* %731, align 4
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %740

734:                                              ; preds = %729
  %735 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %736 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %735, i32 0, i32 69
  %737 = bitcast i32* %736 to i64*
  %738 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %739 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %738, i32 0, i32 0
  store i64* %737, i64** %739, align 8
  store i32 4, i32* %4, align 4
  br label %1228

740:                                              ; preds = %729
  br label %1227

741:                                              ; preds = %3, %3, %3, %3, %3
  %742 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %743 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 4
  %745 = sub nsw i32 %744, 209
  %746 = sdiv i32 %745, 2
  %747 = sext i32 %746 to i64
  store i64 %747, i64* %16, align 8
  %748 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %749 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %748, i32 0, i32 68
  %750 = load i32*, i32** %749, align 8
  %751 = load i64, i64* %16, align 8
  %752 = getelementptr inbounds i32, i32* %750, i64 %751
  %753 = load i32, i32* %752, align 4
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %764

755:                                              ; preds = %741
  %756 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %757 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %756, i32 0, i32 67
  %758 = load i32*, i32** %757, align 8
  %759 = load i64, i64* %16, align 8
  %760 = getelementptr inbounds i32, i32* %758, i64 %759
  %761 = bitcast i32* %760 to i64*
  %762 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %763 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %762, i32 0, i32 0
  store i64* %761, i64** %763, align 8
  store i32 4, i32* %4, align 4
  br label %1228

764:                                              ; preds = %741
  br label %1227

765:                                              ; preds = %3, %3, %3, %3, %3
  %766 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %767 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 4
  %769 = sub nsw i32 %768, 208
  %770 = sdiv i32 %769, 2
  %771 = sext i32 %770 to i64
  store i64 %771, i64* %17, align 8
  %772 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %773 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %772, i32 0, i32 66
  %774 = load i32*, i32** %773, align 8
  %775 = load i64, i64* %17, align 8
  %776 = getelementptr inbounds i32, i32* %774, i64 %775
  %777 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %778 = call i32 @ecore_mfw_get_tlv_time_value(i32* %776, %struct.ecore_tlv_parsed_buf* %777)
  store i32 %778, i32* %4, align 4
  br label %1228

779:                                              ; preds = %3
  %780 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %781 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %780, i32 0, i32 65
  %782 = load i32, i32* %781, align 4
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %790

784:                                              ; preds = %779
  %785 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %786 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %785, i32 0, i32 64
  %787 = bitcast i32* %786 to i64*
  %788 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %789 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %788, i32 0, i32 0
  store i64* %787, i64** %789, align 8
  store i32 4, i32* %4, align 4
  br label %1228

790:                                              ; preds = %779
  br label %1227

791:                                              ; preds = %3
  %792 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %793 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %792, i32 0, i32 63
  %794 = load i32, i32* %793, align 4
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %802

796:                                              ; preds = %791
  %797 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %798 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %797, i32 0, i32 62
  %799 = bitcast i32* %798 to i64*
  %800 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %801 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %800, i32 0, i32 0
  store i64* %799, i64** %801, align 8
  store i32 4, i32* %4, align 4
  br label %1228

802:                                              ; preds = %791
  br label %1227

803:                                              ; preds = %3
  %804 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %805 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %804, i32 0, i32 61
  %806 = load i32, i32* %805, align 4
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %808, label %814

808:                                              ; preds = %803
  %809 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %810 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %809, i32 0, i32 60
  %811 = bitcast i32* %810 to i64*
  %812 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %813 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %812, i32 0, i32 0
  store i64* %811, i64** %813, align 8
  store i32 4, i32* %4, align 4
  br label %1228

814:                                              ; preds = %803
  br label %1227

815:                                              ; preds = %3
  %816 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %817 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %816, i32 0, i32 59
  %818 = load i32, i32* %817, align 4
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %826

820:                                              ; preds = %815
  %821 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %822 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %821, i32 0, i32 58
  %823 = bitcast i32* %822 to i64*
  %824 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %825 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %824, i32 0, i32 0
  store i64* %823, i64** %825, align 8
  store i32 4, i32* %4, align 4
  br label %1228

826:                                              ; preds = %815
  br label %1227

827:                                              ; preds = %3
  %828 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %829 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %828, i32 0, i32 57
  %830 = load i32, i32* %829, align 4
  %831 = icmp ne i32 %830, 0
  br i1 %831, label %832, label %838

832:                                              ; preds = %827
  %833 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %834 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %833, i32 0, i32 56
  %835 = bitcast i32* %834 to i64*
  %836 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %837 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %836, i32 0, i32 0
  store i64* %835, i64** %837, align 8
  store i32 4, i32* %4, align 4
  br label %1228

838:                                              ; preds = %827
  br label %1227

839:                                              ; preds = %3
  %840 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %841 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %840, i32 0, i32 55
  %842 = load i32, i32* %841, align 4
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %850

844:                                              ; preds = %839
  %845 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %846 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %845, i32 0, i32 54
  %847 = bitcast i32* %846 to i64*
  %848 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %849 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %848, i32 0, i32 0
  store i64* %847, i64** %849, align 8
  store i32 4, i32* %4, align 4
  br label %1228

850:                                              ; preds = %839
  br label %1227

851:                                              ; preds = %3
  %852 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %853 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %852, i32 0, i32 53
  %854 = load i32, i32* %853, align 4
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %856, label %862

856:                                              ; preds = %851
  %857 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %858 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %857, i32 0, i32 52
  %859 = bitcast i32* %858 to i64*
  %860 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %861 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %860, i32 0, i32 0
  store i64* %859, i64** %861, align 8
  store i32 4, i32* %4, align 4
  br label %1228

862:                                              ; preds = %851
  br label %1227

863:                                              ; preds = %3, %3, %3, %3, %3
  %864 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %865 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 4
  %867 = sub nsw i32 %866, 275
  %868 = sdiv i32 %867, 2
  %869 = sext i32 %868 to i64
  store i64 %869, i64* %18, align 8
  %870 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %871 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %870, i32 0, i32 51
  %872 = load i32*, i32** %871, align 8
  %873 = load i64, i64* %18, align 8
  %874 = getelementptr inbounds i32, i32* %872, i64 %873
  %875 = load i32, i32* %874, align 4
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %886

877:                                              ; preds = %863
  %878 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %879 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %878, i32 0, i32 50
  %880 = load i32*, i32** %879, align 8
  %881 = load i64, i64* %18, align 8
  %882 = getelementptr inbounds i32, i32* %880, i64 %881
  %883 = bitcast i32* %882 to i64*
  %884 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %885 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %884, i32 0, i32 0
  store i64* %883, i64** %885, align 8
  store i32 4, i32* %4, align 4
  br label %1228

886:                                              ; preds = %863
  br label %1227

887:                                              ; preds = %3, %3, %3, %3, %3
  %888 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %889 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %888, i32 0, i32 0
  %890 = load i32, i32* %889, align 4
  %891 = sub nsw i32 %890, 274
  %892 = sdiv i32 %891, 2
  %893 = sext i32 %892 to i64
  store i64 %893, i64* %19, align 8
  %894 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %895 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %894, i32 0, i32 49
  %896 = load i32*, i32** %895, align 8
  %897 = load i64, i64* %19, align 8
  %898 = getelementptr inbounds i32, i32* %896, i64 %897
  %899 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %900 = call i32 @ecore_mfw_get_tlv_time_value(i32* %898, %struct.ecore_tlv_parsed_buf* %899)
  store i32 %900, i32* %4, align 4
  br label %1228

901:                                              ; preds = %3
  %902 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %903 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %902, i32 0, i32 48
  %904 = load i32, i32* %903, align 4
  %905 = icmp ne i32 %904, 0
  br i1 %905, label %906, label %912

906:                                              ; preds = %901
  %907 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %908 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %907, i32 0, i32 47
  %909 = bitcast i32* %908 to i64*
  %910 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %911 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %910, i32 0, i32 0
  store i64* %909, i64** %911, align 8
  store i32 4, i32* %4, align 4
  br label %1228

912:                                              ; preds = %901
  br label %1227

913:                                              ; preds = %3, %3, %3, %3
  %914 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %915 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %914, i32 0, i32 0
  %916 = load i32, i32* %915, align 4
  %917 = sub nsw i32 %916, 218
  %918 = sext i32 %917 to i64
  store i64 %918, i64* %20, align 8
  %919 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %920 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %919, i32 0, i32 46
  %921 = load i32*, i32** %920, align 8
  %922 = load i64, i64* %20, align 8
  %923 = getelementptr inbounds i32, i32* %921, i64 %922
  %924 = load i32, i32* %923, align 4
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %926, label %935

926:                                              ; preds = %913
  %927 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %928 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %927, i32 0, i32 45
  %929 = load i32*, i32** %928, align 8
  %930 = load i64, i64* %20, align 8
  %931 = getelementptr inbounds i32, i32* %929, i64 %930
  %932 = bitcast i32* %931 to i64*
  %933 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %934 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %933, i32 0, i32 0
  store i64* %932, i64** %934, align 8
  store i32 4, i32* %4, align 4
  br label %1228

935:                                              ; preds = %913
  br label %1227

936:                                              ; preds = %3
  %937 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %938 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %937, i32 0, i32 44
  %939 = load i32, i32* %938, align 4
  %940 = icmp ne i32 %939, 0
  br i1 %940, label %941, label %947

941:                                              ; preds = %936
  %942 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %943 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %942, i32 0, i32 43
  %944 = bitcast i32* %943 to i64*
  %945 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %946 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %945, i32 0, i32 0
  store i64* %944, i64** %946, align 8
  store i32 4, i32* %4, align 4
  br label %1228

947:                                              ; preds = %936
  br label %1227

948:                                              ; preds = %3
  %949 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %950 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %949, i32 0, i32 42
  %951 = load i32, i32* %950, align 4
  %952 = icmp ne i32 %951, 0
  br i1 %952, label %953, label %959

953:                                              ; preds = %948
  %954 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %955 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %954, i32 0, i32 41
  %956 = bitcast i32* %955 to i64*
  %957 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %958 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %957, i32 0, i32 0
  store i64* %956, i64** %958, align 8
  store i32 4, i32* %4, align 4
  br label %1228

959:                                              ; preds = %948
  br label %1227

960:                                              ; preds = %3
  %961 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %962 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %961, i32 0, i32 40
  %963 = load i32, i32* %962, align 4
  %964 = icmp ne i32 %963, 0
  br i1 %964, label %965, label %971

965:                                              ; preds = %960
  %966 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %967 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %966, i32 0, i32 39
  %968 = bitcast i32* %967 to i64*
  %969 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %970 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %969, i32 0, i32 0
  store i64* %968, i64** %970, align 8
  store i32 4, i32* %4, align 4
  br label %1228

971:                                              ; preds = %960
  br label %1227

972:                                              ; preds = %3
  %973 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %974 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %973, i32 0, i32 38
  %975 = load i32, i32* %974, align 4
  %976 = icmp ne i32 %975, 0
  br i1 %976, label %977, label %983

977:                                              ; preds = %972
  %978 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %979 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %978, i32 0, i32 37
  %980 = bitcast i32* %979 to i64*
  %981 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %982 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %981, i32 0, i32 0
  store i64* %980, i64** %982, align 8
  store i32 4, i32* %4, align 4
  br label %1228

983:                                              ; preds = %972
  br label %1227

984:                                              ; preds = %3
  %985 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %986 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %985, i32 0, i32 36
  %987 = load i32, i32* %986, align 4
  %988 = icmp ne i32 %987, 0
  br i1 %988, label %989, label %995

989:                                              ; preds = %984
  %990 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %991 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %990, i32 0, i32 35
  %992 = bitcast i32* %991 to i64*
  %993 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %994 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %993, i32 0, i32 0
  store i64* %992, i64** %994, align 8
  store i32 4, i32* %4, align 4
  br label %1228

995:                                              ; preds = %984
  br label %1227

996:                                              ; preds = %3
  %997 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %998 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %997, i32 0, i32 34
  %999 = load i32, i32* %998, align 4
  %1000 = icmp ne i32 %999, 0
  br i1 %1000, label %1001, label %1007

1001:                                             ; preds = %996
  %1002 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1003 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1002, i32 0, i32 33
  %1004 = bitcast i32* %1003 to i64*
  %1005 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1006 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1005, i32 0, i32 0
  store i64* %1004, i64** %1006, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1007:                                             ; preds = %996
  br label %1227

1008:                                             ; preds = %3
  %1009 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1010 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1009, i32 0, i32 32
  %1011 = load i32, i32* %1010, align 4
  %1012 = icmp ne i32 %1011, 0
  br i1 %1012, label %1013, label %1019

1013:                                             ; preds = %1008
  %1014 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1015 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1014, i32 0, i32 31
  %1016 = bitcast i32* %1015 to i64*
  %1017 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1018 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1017, i32 0, i32 0
  store i64* %1016, i64** %1018, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1019:                                             ; preds = %1008
  br label %1227

1020:                                             ; preds = %3
  %1021 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1022 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1021, i32 0, i32 30
  %1023 = load i32, i32* %1022, align 4
  %1024 = icmp ne i32 %1023, 0
  br i1 %1024, label %1025, label %1031

1025:                                             ; preds = %1020
  %1026 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1027 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1026, i32 0, i32 29
  %1028 = bitcast i32* %1027 to i64*
  %1029 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1030 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1029, i32 0, i32 0
  store i64* %1028, i64** %1030, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1031:                                             ; preds = %1020
  br label %1227

1032:                                             ; preds = %3
  %1033 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1034 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1033, i32 0, i32 28
  %1035 = load i32, i32* %1034, align 4
  %1036 = icmp ne i32 %1035, 0
  br i1 %1036, label %1037, label %1043

1037:                                             ; preds = %1032
  %1038 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1039 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1038, i32 0, i32 27
  %1040 = bitcast i32* %1039 to i64*
  %1041 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1042 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1041, i32 0, i32 0
  store i64* %1040, i64** %1042, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1043:                                             ; preds = %1032
  br label %1227

1044:                                             ; preds = %3
  %1045 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1046 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1045, i32 0, i32 26
  %1047 = load i32, i32* %1046, align 4
  %1048 = icmp ne i32 %1047, 0
  br i1 %1048, label %1049, label %1055

1049:                                             ; preds = %1044
  %1050 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1051 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1050, i32 0, i32 25
  %1052 = bitcast i32* %1051 to i64*
  %1053 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1054 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1053, i32 0, i32 0
  store i64* %1052, i64** %1054, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1055:                                             ; preds = %1044
  br label %1227

1056:                                             ; preds = %3
  %1057 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1058 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1057, i32 0, i32 24
  %1059 = load i32, i32* %1058, align 4
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1061, label %1067

1061:                                             ; preds = %1056
  %1062 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1063 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1062, i32 0, i32 23
  %1064 = bitcast i32* %1063 to i64*
  %1065 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1066 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1065, i32 0, i32 0
  store i64* %1064, i64** %1066, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1067:                                             ; preds = %1056
  br label %1227

1068:                                             ; preds = %3
  %1069 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1070 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1069, i32 0, i32 22
  %1071 = load i32, i32* %1070, align 4
  %1072 = icmp ne i32 %1071, 0
  br i1 %1072, label %1073, label %1079

1073:                                             ; preds = %1068
  %1074 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1075 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1074, i32 0, i32 21
  %1076 = bitcast i32* %1075 to i64*
  %1077 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1078 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1077, i32 0, i32 0
  store i64* %1076, i64** %1078, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1079:                                             ; preds = %1068
  br label %1227

1080:                                             ; preds = %3
  %1081 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1082 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1081, i32 0, i32 20
  %1083 = load i32, i32* %1082, align 4
  %1084 = icmp ne i32 %1083, 0
  br i1 %1084, label %1085, label %1091

1085:                                             ; preds = %1080
  %1086 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1087 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1086, i32 0, i32 19
  %1088 = bitcast i32* %1087 to i64*
  %1089 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1090 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1089, i32 0, i32 0
  store i64* %1088, i64** %1090, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1091:                                             ; preds = %1080
  br label %1227

1092:                                             ; preds = %3
  %1093 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1094 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1093, i32 0, i32 18
  %1095 = load i32, i32* %1094, align 4
  %1096 = icmp ne i32 %1095, 0
  br i1 %1096, label %1097, label %1103

1097:                                             ; preds = %1092
  %1098 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1099 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1098, i32 0, i32 17
  %1100 = bitcast i32* %1099 to i64*
  %1101 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1102 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1101, i32 0, i32 0
  store i64* %1100, i64** %1102, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1103:                                             ; preds = %1092
  br label %1227

1104:                                             ; preds = %3
  %1105 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1106 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1105, i32 0, i32 16
  %1107 = load i32, i32* %1106, align 4
  %1108 = icmp ne i32 %1107, 0
  br i1 %1108, label %1109, label %1115

1109:                                             ; preds = %1104
  %1110 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1111 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1110, i32 0, i32 15
  %1112 = bitcast i32* %1111 to i64*
  %1113 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1114 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1113, i32 0, i32 0
  store i64* %1112, i64** %1114, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1115:                                             ; preds = %1104
  br label %1227

1116:                                             ; preds = %3
  %1117 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1118 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1117, i32 0, i32 14
  %1119 = load i32, i32* %1118, align 4
  %1120 = icmp ne i32 %1119, 0
  br i1 %1120, label %1121, label %1127

1121:                                             ; preds = %1116
  %1122 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1123 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1122, i32 0, i32 13
  %1124 = bitcast i32* %1123 to i64*
  %1125 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1126 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1125, i32 0, i32 0
  store i64* %1124, i64** %1126, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1127:                                             ; preds = %1116
  br label %1227

1128:                                             ; preds = %3
  %1129 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1130 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1129, i32 0, i32 12
  %1131 = load i32, i32* %1130, align 4
  %1132 = icmp ne i32 %1131, 0
  br i1 %1132, label %1133, label %1139

1133:                                             ; preds = %1128
  %1134 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1135 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1134, i32 0, i32 11
  %1136 = bitcast i32* %1135 to i64*
  %1137 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1138 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1137, i32 0, i32 0
  store i64* %1136, i64** %1138, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1139:                                             ; preds = %1128
  br label %1227

1140:                                             ; preds = %3
  %1141 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1142 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1141, i32 0, i32 10
  %1143 = load i32, i32* %1142, align 4
  %1144 = icmp ne i32 %1143, 0
  br i1 %1144, label %1145, label %1151

1145:                                             ; preds = %1140
  %1146 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1147 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1146, i32 0, i32 9
  %1148 = bitcast i32* %1147 to i64*
  %1149 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1150 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1149, i32 0, i32 0
  store i64* %1148, i64** %1150, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1151:                                             ; preds = %1140
  br label %1227

1152:                                             ; preds = %3
  %1153 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1154 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1153, i32 0, i32 8
  %1155 = load i32, i32* %1154, align 4
  %1156 = icmp ne i32 %1155, 0
  br i1 %1156, label %1157, label %1163

1157:                                             ; preds = %1152
  %1158 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1159 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1158, i32 0, i32 7
  %1160 = bitcast i32* %1159 to i64*
  %1161 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1162 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1161, i32 0, i32 0
  store i64* %1160, i64** %1162, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1163:                                             ; preds = %1152
  br label %1227

1164:                                             ; preds = %3
  %1165 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1166 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1165, i32 0, i32 6
  %1167 = load i32, i32* %1166, align 4
  %1168 = icmp ne i32 %1167, 0
  br i1 %1168, label %1169, label %1175

1169:                                             ; preds = %1164
  %1170 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1171 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1170, i32 0, i32 5
  %1172 = bitcast i32* %1171 to i64*
  %1173 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1174 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1173, i32 0, i32 0
  store i64* %1172, i64** %1174, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1175:                                             ; preds = %1164
  br label %1227

1176:                                             ; preds = %3
  %1177 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1178 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1177, i32 0, i32 4
  %1179 = load i32, i32* %1178, align 4
  %1180 = icmp ne i32 %1179, 0
  br i1 %1180, label %1181, label %1187

1181:                                             ; preds = %1176
  %1182 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1183 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1182, i32 0, i32 3
  %1184 = bitcast i32* %1183 to i64*
  %1185 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1186 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1185, i32 0, i32 0
  store i64* %1184, i64** %1186, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1187:                                             ; preds = %1176
  br label %1227

1188:                                             ; preds = %3, %3, %3, %3, %3
  %1189 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %1190 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %1189, i32 0, i32 0
  %1191 = load i32, i32* %1190, align 4
  %1192 = sub nsw i32 %1191, 150
  %1193 = sdiv i32 %1192, 2
  %1194 = sext i32 %1193 to i64
  store i64 %1194, i64* %21, align 8
  %1195 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1196 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1195, i32 0, i32 2
  %1197 = load i32*, i32** %1196, align 8
  %1198 = load i64, i64* %21, align 8
  %1199 = getelementptr inbounds i32, i32* %1197, i64 %1198
  %1200 = load i32, i32* %1199, align 4
  %1201 = icmp ne i32 %1200, 0
  br i1 %1201, label %1202, label %1211

1202:                                             ; preds = %1188
  %1203 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1204 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1203, i32 0, i32 1
  %1205 = load i32*, i32** %1204, align 8
  %1206 = load i64, i64* %21, align 8
  %1207 = getelementptr inbounds i32, i32* %1205, i64 %1206
  %1208 = bitcast i32* %1207 to i64*
  %1209 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1210 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %1209, i32 0, i32 0
  store i64* %1208, i64** %1210, align 8
  store i32 4, i32* %4, align 4
  br label %1228

1211:                                             ; preds = %1188
  br label %1227

1212:                                             ; preds = %3, %3, %3, %3, %3
  %1213 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %1214 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %1213, i32 0, i32 0
  %1215 = load i32, i32* %1214, align 4
  %1216 = sub nsw i32 %1215, 155
  %1217 = sdiv i32 %1216, 2
  %1218 = sext i32 %1217 to i64
  store i64 %1218, i64* %22, align 8
  %1219 = load %struct.ecore_mfw_tlv_fcoe*, %struct.ecore_mfw_tlv_fcoe** %6, align 8
  %1220 = getelementptr inbounds %struct.ecore_mfw_tlv_fcoe, %struct.ecore_mfw_tlv_fcoe* %1219, i32 0, i32 0
  %1221 = load i32*, i32** %1220, align 8
  %1222 = load i64, i64* %22, align 8
  %1223 = getelementptr inbounds i32, i32* %1221, i64 %1222
  %1224 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %1225 = call i32 @ecore_mfw_get_tlv_time_value(i32* %1223, %struct.ecore_tlv_parsed_buf* %1224)
  store i32 %1225, i32* %4, align 4
  br label %1228

1226:                                             ; preds = %3
  br label %1227

1227:                                             ; preds = %1226, %1211, %1187, %1175, %1163, %1151, %1139, %1127, %1115, %1103, %1091, %1079, %1067, %1055, %1043, %1031, %1019, %1007, %995, %983, %971, %959, %947, %935, %912, %886, %862, %850, %838, %826, %814, %802, %790, %764, %740, %728, %716, %690, %652, %628, %616, %604, %592, %580, %568, %551, %534, %506, %483, %471, %459, %447, %435, %409, %385, %373, %361, %349, %337, %325, %313, %301, %289, %277, %265, %253, %241, %229, %217, %205, %193, %181, %169, %157, %145, %133, %121, %109, %97, %85, %73, %61, %49, %37
  store i32 -1, i32* %4, align 4
  br label %1228

1228:                                             ; preds = %1227, %1212, %1202, %1181, %1169, %1157, %1145, %1133, %1121, %1109, %1097, %1085, %1073, %1061, %1049, %1037, %1025, %1013, %1001, %989, %977, %965, %953, %941, %926, %906, %887, %877, %856, %844, %832, %820, %808, %796, %784, %765, %755, %734, %722, %710, %691, %681, %653, %643, %622, %610, %598, %586, %574, %562, %552, %545, %535, %525, %507, %497, %477, %465, %453, %441, %429, %410, %400, %379, %367, %355, %343, %331, %319, %307, %295, %283, %271, %259, %247, %235, %223, %211, %199, %187, %175, %163, %151, %139, %127, %115, %103, %91, %79, %67, %55, %43, %31
  %1229 = load i32, i32* %4, align 4
  ret i32 %1229
}

declare dso_local i32 @ecore_mfw_get_tlv_time_value(i32*, %struct.ecore_tlv_parsed_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
