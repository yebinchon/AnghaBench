; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonacl.c_nfsrv_acemasktoperm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonacl.c_nfsrv_acemasktoperm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NFSV4ACE_READDATA = common dso_local global i32 0, align 4
@ACL_READ_DATA = common dso_local global i32 0, align 4
@NFSV4ACE_LISTDIRECTORY = common dso_local global i32 0, align 4
@ACL_LIST_DIRECTORY = common dso_local global i32 0, align 4
@NFSV4ACE_WRITEDATA = common dso_local global i32 0, align 4
@ACL_WRITE_DATA = common dso_local global i32 0, align 4
@NFSV4ACE_ADDFILE = common dso_local global i32 0, align 4
@ACL_ADD_FILE = common dso_local global i32 0, align 4
@NFSV4ACE_APPENDDATA = common dso_local global i32 0, align 4
@ACL_APPEND_DATA = common dso_local global i32 0, align 4
@NFSV4ACE_ADDSUBDIRECTORY = common dso_local global i32 0, align 4
@ACL_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@NFSV4ACE_READNAMEDATTR = common dso_local global i32 0, align 4
@ACL_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@NFSV4ACE_WRITENAMEDATTR = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@NFSV4ACE_EXECUTE = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@NFSV4ACE_SEARCH = common dso_local global i32 0, align 4
@NFSV4ACE_DELETECHILD = common dso_local global i32 0, align 4
@ACL_DELETE_CHILD = common dso_local global i32 0, align 4
@NFSV4ACE_READATTRIBUTES = common dso_local global i32 0, align 4
@ACL_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@NFSV4ACE_WRITEATTRIBUTES = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@NFSV4ACE_DELETE = common dso_local global i32 0, align 4
@ACL_DELETE = common dso_local global i32 0, align 4
@NFSV4ACE_READACL = common dso_local global i32 0, align 4
@ACL_READ_ACL = common dso_local global i32 0, align 4
@NFSV4ACE_WRITEACL = common dso_local global i32 0, align 4
@ACL_WRITE_ACL = common dso_local global i32 0, align 4
@NFSV4ACE_WRITEOWNER = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER = common dso_local global i32 0, align 4
@NFSV4ACE_SYNCHRONIZE = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE = common dso_local global i32 0, align 4
@NFSERR_ATTRNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @nfsrv_acemasktoperm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_acemasktoperm(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NFSV4ACE_READDATA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32, i32* @NFSV4ACE_READDATA, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @ACL_READ_DATA, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %17, %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NFSV4ACE_LISTDIRECTORY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @NFSV4ACE_LISTDIRECTORY, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @ACL_LIST_DIRECTORY, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NFSV4ACE_WRITEDATA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @NFSV4ACE_WRITEDATA, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @ACL_WRITE_DATA, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %43, %38
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @NFSV4ACE_ADDFILE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* @NFSV4ACE_ADDFILE, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @ACL_ADD_FILE, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @NFSV4ACE_APPENDDATA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* @NFSV4ACE_APPENDDATA, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @ACL_APPEND_DATA, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %69, %64
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @NFSV4ACE_ADDSUBDIRECTORY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* @NFSV4ACE_ADDSUBDIRECTORY, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @ACL_ADD_SUBDIRECTORY, align 4
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %82, %77
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @NFSV4ACE_READNAMEDATTR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32, i32* @NFSV4ACE_READNAMEDATTR, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @ACL_READ_NAMED_ATTRS, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %95, %90
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @NFSV4ACE_WRITENAMEDATTR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32, i32* @NFSV4ACE_WRITENAMEDATTR, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @ACL_WRITE_NAMED_ATTRS, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %108, %103
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @NFSV4ACE_EXECUTE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i32, i32* @NFSV4ACE_EXECUTE, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* @ACL_EXECUTE, align 4
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %121, %116
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @NFSV4ACE_SEARCH, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i32, i32* @NFSV4ACE_SEARCH, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* @ACL_EXECUTE, align 4
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %134, %129
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @NFSV4ACE_DELETECHILD, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i32, i32* @NFSV4ACE_DELETECHILD, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* @ACL_DELETE_CHILD, align 4
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %147, %142
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @NFSV4ACE_READATTRIBUTES, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i32, i32* @NFSV4ACE_READATTRIBUTES, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %7, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @ACL_READ_ATTRIBUTES, align 4
  %166 = load i32, i32* %11, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %160, %155
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @NFSV4ACE_WRITEATTRIBUTES, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load i32, i32* @NFSV4ACE_WRITEATTRIBUTES, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* @ACL_WRITE_ATTRIBUTES, align 4
  %179 = load i32, i32* %11, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %173, %168
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @NFSV4ACE_DELETE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i32, i32* @NFSV4ACE_DELETE, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %7, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* @ACL_DELETE, align 4
  %192 = load i32, i32* %11, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %186, %181
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @NFSV4ACE_READACL, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = load i32, i32* @NFSV4ACE_READACL, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %7, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* @ACL_READ_ACL, align 4
  %205 = load i32, i32* %11, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %11, align 4
  br label %207

207:                                              ; preds = %199, %194
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @NFSV4ACE_WRITEACL, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %207
  %213 = load i32, i32* @NFSV4ACE_WRITEACL, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %7, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* @ACL_WRITE_ACL, align 4
  %218 = load i32, i32* %11, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %212, %207
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @NFSV4ACE_WRITEOWNER, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = load i32, i32* @NFSV4ACE_WRITEOWNER, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %7, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* @ACL_WRITE_OWNER, align 4
  %231 = load i32, i32* %11, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %225, %220
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @NFSV4ACE_SYNCHRONIZE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load i32, i32* @NFSV4ACE_SYNCHRONIZE, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %7, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* @ACL_SYNCHRONIZE, align 4
  %244 = load i32, i32* %11, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %11, align 4
  br label %246

246:                                              ; preds = %238, %233
  %247 = load i32, i32* %7, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = load i32, i32* @NFSERR_ATTRNOTSUPP, align 4
  store i32 %250, i32* %12, align 4
  br label %254

251:                                              ; preds = %246
  %252 = load i32, i32* %11, align 4
  %253 = load i32*, i32** %10, align 8
  store i32 %252, i32* %253, align 4
  br label %254

254:                                              ; preds = %251, %249
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @NFSEXITCODE(i32 %255)
  %257 = load i32, i32* %12, align 4
  ret i32 %257
}

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
