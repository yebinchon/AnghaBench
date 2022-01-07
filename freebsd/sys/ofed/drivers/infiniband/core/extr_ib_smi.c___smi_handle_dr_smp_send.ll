; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c___smi_handle_dr_smp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c___smi_handle_dr_smp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_SMP_MAX_PATH_HOPS = common dso_local global i64 0, align 8
@IB_SMI_DISCARD = common dso_local global i32 0, align 4
@IB_SMI_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64, i64*, i64*, i64, i32, i32)* @__smi_handle_dr_smp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smi_handle_dr_smp_send(i32 %0, i32 %1, i64* %2, i64 %3, i64* %4, i64* %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i64* %2, i64** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i64, i64* %14, align 8
  %21 = load i64, i64* @IB_SMP_MAX_PATH_HOPS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %24, i32* %10, align 4
  br label %203

25:                                               ; preds = %9
  %26 = load i64, i64* %17, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %117, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %14, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load i64*, i64** %13, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i64*, i64** %13, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load i64*, i64** %15, align 8
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %10, align 4
  br label %203

53:                                               ; preds = %31, %28
  %54 = load i64*, i64** %13, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load i64*, i64** %13, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %66, i32* %10, align 4
  br label %203

67:                                               ; preds = %62
  %68 = load i64*, i64** %13, align 8
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load i64*, i64** %15, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %83

81:                                               ; preds = %67
  %82 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %10, align 4
  br label %203

85:                                               ; preds = %57, %53
  %86 = load i64*, i64** %13, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i64*, i64** %13, align 8
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %90
  %100 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %10, align 4
  br label %203

105:                                              ; preds = %85
  %106 = load i64*, i64** %13, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %14, align 8
  %109 = add i64 %108, 1
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %10, align 4
  br label %203

117:                                              ; preds = %25
  %118 = load i64, i64* %14, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %117
  %121 = load i64*, i64** %13, align 8
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, 1
  %125 = icmp eq i64 %122, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i64*, i64** %13, align 8
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* %127, align 8
  %130 = load i64*, i64** %16, align 8
  %131 = load i64*, i64** %13, align 8
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %142

140:                                              ; preds = %126
  %141 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  store i32 %143, i32* %10, align 4
  br label %203

144:                                              ; preds = %120, %117
  %145 = load i64*, i64** %13, align 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ule i64 2, %146
  br i1 %147, label %148, label %176

148:                                              ; preds = %144
  %149 = load i64*, i64** %13, align 8
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %14, align 8
  %152 = icmp ule i64 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %157, i32* %10, align 4
  br label %203

158:                                              ; preds = %153
  %159 = load i64*, i64** %13, align 8
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, -1
  store i64 %161, i64* %159, align 8
  %162 = load i64*, i64** %16, align 8
  %163 = load i64*, i64** %13, align 8
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp eq i64 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %158
  %171 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %174

172:                                              ; preds = %158
  %173 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  store i32 %175, i32* %10, align 4
  br label %203

176:                                              ; preds = %148, %144
  %177 = load i64*, i64** %13, align 8
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 1
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load i64*, i64** %13, align 8
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, -1
  store i64 %183, i64* %181, align 8
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186, %180
  %190 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  store i32 %194, i32* %10, align 4
  br label %203

195:                                              ; preds = %176
  %196 = load i64*, i64** %13, align 8
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %200, i32* %10, align 4
  br label %203

201:                                              ; preds = %195
  %202 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %201, %199, %193, %174, %156, %142, %115, %103, %83, %65, %51, %23
  %204 = load i32, i32* %10, align 4
  ret i32 %204
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
