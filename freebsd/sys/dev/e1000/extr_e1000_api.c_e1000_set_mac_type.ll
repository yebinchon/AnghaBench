; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_api.c_e1000_set_mac_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_api.c_e1000_set_mac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"e1000_set_mac_type\00", align 1
@e1000_82542 = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i32 0, align 4
@e1000_82545 = common dso_local global i32 0, align 4
@e1000_82545_rev_3 = common dso_local global i32 0, align 4
@e1000_82546 = common dso_local global i32 0, align 4
@e1000_82546_rev_3 = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i32 0, align 4
@e1000_82541_rev_2 = common dso_local global i32 0, align 4
@e1000_82547 = common dso_local global i32 0, align 4
@e1000_82547_rev_2 = common dso_local global i32 0, align 4
@e1000_82571 = common dso_local global i32 0, align 4
@e1000_82572 = common dso_local global i32 0, align 4
@e1000_82573 = common dso_local global i32 0, align 4
@e1000_82574 = common dso_local global i32 0, align 4
@e1000_82583 = common dso_local global i32 0, align 4
@e1000_80003es2lan = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i32 0, align 4
@e1000_ich9lan = common dso_local global i32 0, align 4
@e1000_ich10lan = common dso_local global i32 0, align 4
@e1000_pchlan = common dso_local global i32 0, align 4
@e1000_pch2lan = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i32 0, align 4
@e1000_pch_cnp = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i32 0, align 4
@e1000_i210 = common dso_local global i32 0, align 4
@e1000_i211 = common dso_local global i32 0, align 4
@e1000_vfadapt = common dso_local global i32 0, align 4
@e1000_vfadapt_i350 = common dso_local global i32 0, align 4
@e1000_i354 = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_set_mac_type(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  store %struct.e1000_mac_info* %6, %struct.e1000_mac_info** %3, align 8
  %7 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %152 [
    i32 266, label %12
    i32 264, label %16
    i32 265, label %16
    i32 263, label %20
    i32 262, label %20
    i32 261, label %20
    i32 260, label %20
    i32 278, label %24
    i32 277, label %24
    i32 276, label %24
    i32 275, label %24
    i32 274, label %24
    i32 259, label %28
    i32 258, label %28
    i32 257, label %32
    i32 256, label %32
    i32 255, label %32
    i32 254, label %36
    i32 253, label %36
    i32 252, label %36
    i32 251, label %40
    i32 250, label %40
    i32 246, label %40
    i32 249, label %40
    i32 248, label %40
    i32 247, label %40
    i32 273, label %44
    i32 272, label %44
    i32 270, label %44
    i32 271, label %48
    i32 269, label %48
    i32 268, label %48
    i32 267, label %48
    i32 245, label %52
    i32 244, label %52
    i32 243, label %56
    i32 242, label %60
    i32 241, label %60
    i32 237, label %60
    i32 236, label %60
    i32 235, label %60
    i32 240, label %60
    i32 234, label %60
    i32 238, label %60
    i32 239, label %60
    i32 233, label %64
    i32 232, label %64
    i32 231, label %64
    i32 230, label %64
    i32 229, label %68
    i32 228, label %68
    i32 227, label %68
    i32 226, label %72
    i32 225, label %72
    i32 205, label %76
    i32 282, label %80
    i32 280, label %80
    i32 281, label %80
    i32 279, label %80
    i32 174, label %84
    i32 172, label %84
    i32 173, label %84
    i32 169, label %84
    i32 168, label %84
    i32 171, label %84
    i32 170, label %84
    i32 175, label %84
    i32 166, label %88
    i32 164, label %88
    i32 165, label %88
    i32 161, label %88
    i32 160, label %88
    i32 159, label %88
    i32 163, label %88
    i32 167, label %88
    i32 162, label %88
    i32 177, label %88
    i32 178, label %88
    i32 176, label %88
    i32 180, label %92
    i32 181, label %92
    i32 179, label %92
    i32 151, label %96
    i32 152, label %96
    i32 136, label %96
    i32 137, label %96
    i32 158, label %100
    i32 157, label %100
    i32 139, label %104
    i32 138, label %104
    i32 141, label %104
    i32 140, label %104
    i32 150, label %104
    i32 148, label %104
    i32 149, label %104
    i32 147, label %104
    i32 135, label %108
    i32 131, label %108
    i32 134, label %108
    i32 130, label %108
    i32 142, label %108
    i32 133, label %108
    i32 129, label %108
    i32 132, label %108
    i32 128, label %108
    i32 156, label %112
    i32 154, label %112
    i32 155, label %112
    i32 153, label %112
    i32 146, label %112
    i32 144, label %112
    i32 145, label %112
    i32 143, label %112
    i32 224, label %116
    i32 223, label %116
    i32 222, label %116
    i32 221, label %120
    i32 220, label %120
    i32 215, label %120
    i32 217, label %120
    i32 216, label %120
    i32 219, label %120
    i32 218, label %120
    i32 214, label %120
    i32 211, label %124
    i32 209, label %124
    i32 207, label %124
    i32 206, label %124
    i32 210, label %124
    i32 208, label %124
    i32 201, label %124
    i32 203, label %124
    i32 204, label %124
    i32 202, label %124
    i32 191, label %128
    i32 189, label %128
    i32 188, label %128
    i32 187, label %128
    i32 190, label %128
    i32 199, label %132
    i32 194, label %132
    i32 200, label %132
    i32 197, label %132
    i32 198, label %132
    i32 196, label %132
    i32 195, label %132
    i32 193, label %132
    i32 192, label %136
    i32 213, label %140
    i32 212, label %140
    i32 186, label %144
    i32 185, label %144
    i32 184, label %148
    i32 182, label %148
    i32 183, label %148
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @e1000_82542, align 4
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %155

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @e1000_82543, align 4
  %18 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %155

20:                                               ; preds = %1, %1, %1, %1
  %21 = load i32, i32* @e1000_82544, align 4
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %155

24:                                               ; preds = %1, %1, %1, %1, %1
  %25 = load i32, i32* @e1000_82540, align 4
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %155

28:                                               ; preds = %1, %1
  %29 = load i32, i32* @e1000_82545, align 4
  %30 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %155

32:                                               ; preds = %1, %1, %1
  %33 = load i32, i32* @e1000_82545_rev_3, align 4
  %34 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %155

36:                                               ; preds = %1, %1, %1
  %37 = load i32, i32* @e1000_82546, align 4
  %38 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %155

40:                                               ; preds = %1, %1, %1, %1, %1, %1
  %41 = load i32, i32* @e1000_82546_rev_3, align 4
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %155

44:                                               ; preds = %1, %1, %1
  %45 = load i32, i32* @e1000_82541, align 4
  %46 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %155

48:                                               ; preds = %1, %1, %1, %1
  %49 = load i32, i32* @e1000_82541_rev_2, align 4
  %50 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %155

52:                                               ; preds = %1, %1
  %53 = load i32, i32* @e1000_82547, align 4
  %54 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %155

56:                                               ; preds = %1
  %57 = load i32, i32* @e1000_82547_rev_2, align 4
  %58 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %155

60:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %61 = load i32, i32* @e1000_82571, align 4
  %62 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %155

64:                                               ; preds = %1, %1, %1, %1
  %65 = load i32, i32* @e1000_82572, align 4
  %66 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %155

68:                                               ; preds = %1, %1, %1
  %69 = load i32, i32* @e1000_82573, align 4
  %70 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %155

72:                                               ; preds = %1, %1
  %73 = load i32, i32* @e1000_82574, align 4
  %74 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %155

76:                                               ; preds = %1
  %77 = load i32, i32* @e1000_82583, align 4
  %78 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %155

80:                                               ; preds = %1, %1, %1, %1
  %81 = load i32, i32* @e1000_80003es2lan, align 4
  %82 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %155

84:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %85 = load i32, i32* @e1000_ich8lan, align 4
  %86 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %155

88:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %89 = load i32, i32* @e1000_ich9lan, align 4
  %90 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %155

92:                                               ; preds = %1, %1, %1
  %93 = load i32, i32* @e1000_ich10lan, align 4
  %94 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %155

96:                                               ; preds = %1, %1, %1, %1
  %97 = load i32, i32* @e1000_pchlan, align 4
  %98 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %155

100:                                              ; preds = %1, %1
  %101 = load i32, i32* @e1000_pch2lan, align 4
  %102 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %155

104:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %105 = load i32, i32* @e1000_pch_lpt, align 4
  %106 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %155

108:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %109 = load i32, i32* @e1000_pch_spt, align 4
  %110 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %111 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %155

112:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %113 = load i32, i32* @e1000_pch_cnp, align 4
  %114 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %155

116:                                              ; preds = %1, %1, %1
  %117 = load i32, i32* @e1000_82575, align 4
  %118 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  br label %155

120:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %121 = load i32, i32* @e1000_82576, align 4
  %122 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %123 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %155

124:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %125 = load i32, i32* @e1000_82580, align 4
  %126 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  br label %155

128:                                              ; preds = %1, %1, %1, %1, %1
  %129 = load i32, i32* @e1000_i350, align 4
  %130 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %155

132:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %133 = load i32, i32* @e1000_i210, align 4
  %134 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %135 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  br label %155

136:                                              ; preds = %1
  %137 = load i32, i32* @e1000_i211, align 4
  %138 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  br label %155

140:                                              ; preds = %1, %1
  %141 = load i32, i32* @e1000_vfadapt, align 4
  %142 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %143 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %155

144:                                              ; preds = %1, %1
  %145 = load i32, i32* @e1000_vfadapt_i350, align 4
  %146 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %147 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %155

148:                                              ; preds = %1, %1, %1
  %149 = load i32, i32* @e1000_i354, align 4
  %150 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %151 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %155

152:                                              ; preds = %1
  %153 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %152, %148, %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
