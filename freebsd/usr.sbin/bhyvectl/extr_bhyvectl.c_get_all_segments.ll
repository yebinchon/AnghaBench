; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_all_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_all_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@get_desc_ds = common dso_local global i64 0, align 8
@get_all = common dso_local global i64 0, align 8
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@desc_base = common dso_local global i32 0, align 4
@desc_limit = common dso_local global i32 0, align 4
@desc_access = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ds desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_es = common dso_local global i64 0, align 8
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"es desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_fs = common dso_local global i64 0, align 8
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"fs desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_gs = common dso_local global i64 0, align 8
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"gs desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_ss = common dso_local global i64 0, align 8
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"ss desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_cs = common dso_local global i64 0, align 8
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"cs desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_tr = common dso_local global i64 0, align 8
@VM_REG_GUEST_TR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"tr desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_ldtr = common dso_local global i64 0, align 8
@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"ldtr desc[%d]\090x%016lx/0x%08x/0x%08x\0A\00", align 1
@get_desc_gdtr = common dso_local global i64 0, align 8
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"gdtr[%d]\09\090x%016lx/0x%08x\0A\00", align 1
@get_desc_idtr = common dso_local global i64 0, align 8
@VM_REG_GUEST_IDTR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"idtr[%d]\09\090x%016lx/0x%08x\0A\00", align 1
@get_cs = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"cs[%d]\09\090x%04lx\0A\00", align 1
@get_ds = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"ds[%d]\09\090x%04lx\0A\00", align 1
@get_es = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"es[%d]\09\090x%04lx\0A\00", align 1
@get_fs = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"fs[%d]\09\090x%04lx\0A\00", align 1
@get_gs = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"gs[%d]\09\090x%04lx\0A\00", align 1
@get_ss = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"ss[%d]\09\090x%04lx\0A\00", align 1
@get_tr = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"tr[%d]\09\090x%04lx\0A\00", align 1
@get_ldtr = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"ldtr[%d]\09\090x%04lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32)* @get_all_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_all_segments(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @get_desc_ds, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @get_all, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19, %16
  %23 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %26 = call i32 @vm_get_desc(%struct.vmctx* %23, i32 %24, i32 %25, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @desc_base, align 4
  %32 = load i32, i32* @desc_limit, align 4
  %33 = load i32, i32* @desc_access, align 4
  %34 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %22
  br label %36

36:                                               ; preds = %35, %19, %2
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @get_desc_es, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @get_all, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42, %39
  %46 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %49 = call i32 @vm_get_desc(%struct.vmctx* %46, i32 %47, i32 %48, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @desc_base, align 4
  %55 = load i32, i32* @desc_limit, align 4
  %56 = load i32, i32* @desc_access, align 4
  %57 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %42, %36
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @get_desc_fs, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @get_all, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65, %62
  %69 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %72 = call i32 @vm_get_desc(%struct.vmctx* %69, i32 %70, i32 %71, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @desc_base, align 4
  %78 = load i32, i32* @desc_limit, align 4
  %79 = load i32, i32* @desc_access, align 4
  %80 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81, %65, %59
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* @get_desc_gs, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @get_all, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88, %85
  %92 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %95 = call i32 @vm_get_desc(%struct.vmctx* %92, i32 %93, i32 %94, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @desc_base, align 4
  %101 = load i32, i32* @desc_limit, align 4
  %102 = load i32, i32* @desc_access, align 4
  %103 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %91
  br label %105

105:                                              ; preds = %104, %88, %82
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @get_desc_ss, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @get_all, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111, %108
  %115 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %118 = call i32 @vm_get_desc(%struct.vmctx* %115, i32 %116, i32 %117, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @desc_base, align 4
  %124 = load i32, i32* @desc_limit, align 4
  %125 = load i32, i32* @desc_access, align 4
  %126 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %114
  br label %128

128:                                              ; preds = %127, %111, %105
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* @get_desc_cs, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* @get_all, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134, %131
  %138 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %141 = call i32 @vm_get_desc(%struct.vmctx* %138, i32 %139, i32 %140, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @desc_base, align 4
  %147 = load i32, i32* @desc_limit, align 4
  %148 = load i32, i32* @desc_access, align 4
  %149 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %145, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %137
  br label %151

151:                                              ; preds = %150, %134, %128
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %174, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* @get_desc_tr, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* @get_all, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %157, %154
  %161 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %164 = call i32 @vm_get_desc(%struct.vmctx* %161, i32 %162, i32 %163, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @desc_base, align 4
  %170 = load i32, i32* @desc_limit, align 4
  %171 = load i32, i32* @desc_access, align 4
  %172 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %168, i32 %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %160
  br label %174

174:                                              ; preds = %173, %157, %151
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %197, label %177

177:                                              ; preds = %174
  %178 = load i64, i64* @get_desc_ldtr, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* @get_all, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %180, %177
  %184 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %187 = call i32 @vm_get_desc(%struct.vmctx* %184, i32 %185, i32 %186, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @desc_base, align 4
  %193 = load i32, i32* @desc_limit, align 4
  %194 = load i32, i32* @desc_access, align 4
  %195 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %191, i32 %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %190, %183
  br label %197

197:                                              ; preds = %196, %180, %174
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %219, label %200

200:                                              ; preds = %197
  %201 = load i64, i64* @get_desc_gdtr, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i64, i64* @get_all, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %203, %200
  %207 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  %210 = call i32 @vm_get_desc(%struct.vmctx* %207, i32 %208, i32 %209, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* %13, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @desc_base, align 4
  %216 = load i32, i32* @desc_limit, align 4
  %217 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %213, %206
  br label %219

219:                                              ; preds = %218, %203, %197
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %241, label %222

222:                                              ; preds = %219
  %223 = load i64, i64* @get_desc_idtr, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i64, i64* @get_all, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %225, %222
  %229 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @VM_REG_GUEST_IDTR, align 4
  %232 = call i32 @vm_get_desc(%struct.vmctx* %229, i32 %230, i32 %231, i32* @desc_base, i32* @desc_limit, i32* @desc_access)
  store i32 %232, i32* %13, align 4
  %233 = load i32, i32* %13, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %228
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @desc_base, align 4
  %238 = load i32, i32* @desc_limit, align 4
  %239 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %235, %228
  br label %241

241:                                              ; preds = %240, %225, %219
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %262, label %244

244:                                              ; preds = %241
  %245 = load i64, i64* @get_cs, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = load i64, i64* @get_all, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %247, %244
  %251 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %254 = call i32 @vm_get_register(%struct.vmctx* %251, i32 %252, i32 %253, i32* %5)
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %13, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %250
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %5, align 4
  %260 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %257, %250
  br label %262

262:                                              ; preds = %261, %247, %241
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %283, label %265

265:                                              ; preds = %262
  %266 = load i64, i64* @get_ds, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = load i64, i64* @get_all, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %268, %265
  %272 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %275 = call i32 @vm_get_register(%struct.vmctx* %272, i32 %273, i32 %274, i32* %6)
  store i32 %275, i32* %13, align 4
  %276 = load i32, i32* %13, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %271
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* %6, align 4
  %281 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %278, %271
  br label %283

283:                                              ; preds = %282, %268, %262
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %304, label %286

286:                                              ; preds = %283
  %287 = load i64, i64* @get_es, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load i64, i64* @get_all, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %289, %286
  %293 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %294 = load i32, i32* %4, align 4
  %295 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %296 = call i32 @vm_get_register(%struct.vmctx* %293, i32 %294, i32 %295, i32* %7)
  store i32 %296, i32* %13, align 4
  %297 = load i32, i32* %13, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* %7, align 4
  %302 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %292
  br label %304

304:                                              ; preds = %303, %289, %283
  %305 = load i32, i32* %13, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %325, label %307

307:                                              ; preds = %304
  %308 = load i64, i64* @get_fs, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load i64, i64* @get_all, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %325

313:                                              ; preds = %310, %307
  %314 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %317 = call i32 @vm_get_register(%struct.vmctx* %314, i32 %315, i32 %316, i32* %8)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %313
  %321 = load i32, i32* %4, align 4
  %322 = load i32, i32* %8, align 4
  %323 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %320, %313
  br label %325

325:                                              ; preds = %324, %310, %304
  %326 = load i32, i32* %13, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %346, label %328

328:                                              ; preds = %325
  %329 = load i64, i64* @get_gs, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %328
  %332 = load i64, i64* @get_all, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %331, %328
  %335 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %338 = call i32 @vm_get_register(%struct.vmctx* %335, i32 %336, i32 %337, i32* %9)
  store i32 %338, i32* %13, align 4
  %339 = load i32, i32* %13, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %334
  %342 = load i32, i32* %4, align 4
  %343 = load i32, i32* %9, align 4
  %344 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %341, %334
  br label %346

346:                                              ; preds = %345, %331, %325
  %347 = load i32, i32* %13, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %367, label %349

349:                                              ; preds = %346
  %350 = load i64, i64* @get_ss, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i64, i64* @get_all, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %367

355:                                              ; preds = %352, %349
  %356 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %357 = load i32, i32* %4, align 4
  %358 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %359 = call i32 @vm_get_register(%struct.vmctx* %356, i32 %357, i32 %358, i32* %10)
  store i32 %359, i32* %13, align 4
  %360 = load i32, i32* %13, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %355
  %363 = load i32, i32* %4, align 4
  %364 = load i32, i32* %10, align 4
  %365 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %363, i32 %364)
  br label %366

366:                                              ; preds = %362, %355
  br label %367

367:                                              ; preds = %366, %352, %346
  %368 = load i32, i32* %13, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %388, label %370

370:                                              ; preds = %367
  %371 = load i64, i64* @get_tr, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %370
  %374 = load i64, i64* @get_all, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %388

376:                                              ; preds = %373, %370
  %377 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %378 = load i32, i32* %4, align 4
  %379 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %380 = call i32 @vm_get_register(%struct.vmctx* %377, i32 %378, i32 %379, i32* %11)
  store i32 %380, i32* %13, align 4
  %381 = load i32, i32* %13, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %376
  %384 = load i32, i32* %4, align 4
  %385 = load i32, i32* %11, align 4
  %386 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %384, i32 %385)
  br label %387

387:                                              ; preds = %383, %376
  br label %388

388:                                              ; preds = %387, %373, %367
  %389 = load i32, i32* %13, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %409, label %391

391:                                              ; preds = %388
  %392 = load i64, i64* @get_ldtr, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = load i64, i64* @get_all, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %409

397:                                              ; preds = %394, %391
  %398 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %401 = call i32 @vm_get_register(%struct.vmctx* %398, i32 %399, i32 %400, i32* %12)
  store i32 %401, i32* %13, align 4
  %402 = load i32, i32* %13, align 4
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %397
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* %12, align 4
  %407 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %405, i32 %406)
  br label %408

408:                                              ; preds = %404, %397
  br label %409

409:                                              ; preds = %408, %394, %388
  %410 = load i32, i32* %13, align 4
  ret i32 %410
}

declare dso_local i32 @vm_get_desc(%struct.vmctx*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @vm_get_register(%struct.vmctx*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
