; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdcreate_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdcreate_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i64, i64, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.md_req = type { i8*, i64, i32, i64, i64 }
%struct.thread = type { i32 }
%struct.vattr = type { i64, i64 }
%struct.nameidata = type { %struct.TYPE_6__* }

@UIO_USERSPACE = common dso_local global i64 0, align 8
@UIO_SYSSPACE = common dso_local global i64 0, align 8
@EDOOFUS = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@MD_READONLY = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@MD_VERIFY = common dso_local global i32 0, align 4
@O_VERIFY = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@VV_MD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MD-DEV%ju-INO%ju\00", align 1
@MD_ASYNC = common dso_local global i32 0, align 4
@MD_CACHE = common dso_local global i32 0, align 4
@MD_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.md_req*, %struct.thread*)* @mdcreate_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdcreate_vnode(%struct.md_s* %0, %struct.md_req* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_s*, align 8
  %6 = alloca %struct.md_req*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.vattr, align 8
  %9 = alloca %struct.nameidata, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.md_s* %0, %struct.md_s** %5, align 8
  store %struct.md_req* %1, %struct.md_req** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %13 = load %struct.md_req*, %struct.md_req** %6, align 8
  %14 = getelementptr inbounds %struct.md_req, %struct.md_req* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.md_req*, %struct.md_req** %6, align 8
  %17 = getelementptr inbounds %struct.md_req, %struct.md_req* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UIO_USERSPACE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.md_s*, %struct.md_s** %5, align 8
  %24 = getelementptr inbounds %struct.md_s, %struct.md_s* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @copyinstr(i8* %22, i32 %25, i32 4, i32* null)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %237

31:                                               ; preds = %21
  br label %47

32:                                               ; preds = %3
  %33 = load %struct.md_req*, %struct.md_req** %6, align 8
  %34 = getelementptr inbounds %struct.md_req, %struct.md_req* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UIO_SYSSPACE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.md_s*, %struct.md_s** %5, align 8
  %40 = getelementptr inbounds %struct.md_s, %struct.md_s* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strlcpy(i32 %41, i8* %42, i32 4)
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @EDOOFUS, align 4
  store i32 %45, i32* %4, align 4
  br label %237

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* @FREAD, align 4
  %49 = load %struct.md_req*, %struct.md_req** %6, align 8
  %50 = getelementptr inbounds %struct.md_req, %struct.md_req* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MD_READONLY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @FWRITE, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 0, %55 ], [ %57, %56 ]
  %60 = or i32 %48, %59
  %61 = load %struct.md_req*, %struct.md_req** %6, align 8
  %62 = getelementptr inbounds %struct.md_req, %struct.md_req* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MD_VERIFY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @O_VERIFY, align 4
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %60, %71
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @LOOKUP, align 4
  %74 = load i32, i32* @FOLLOW, align 4
  %75 = load i64, i64* @UIO_SYSSPACE, align 8
  %76 = load %struct.md_s*, %struct.md_s** %5, align 8
  %77 = getelementptr inbounds %struct.md_s, %struct.md_s* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.thread*, %struct.thread** %7, align 8
  %80 = call i32 @NDINIT(%struct.nameidata* %9, i32 %73, i32 %74, i64 %75, i32 %78, %struct.thread* %79)
  %81 = call i32 @vn_open(%struct.nameidata* %9, i32* %12, i32 0, i32* null)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %237

86:                                               ; preds = %70
  %87 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %88 = call i32 @NDFREE(%struct.nameidata* %9, i32 %87)
  %89 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VREG, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %11, align 4
  br label %224

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.thread*, %struct.thread** %7, align 8
  %101 = getelementptr inbounds %struct.thread, %struct.thread* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @VOP_GETATTR(%struct.TYPE_6__* %99, %struct.vattr* %8, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %224

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @VOP_ISLOCKED(%struct.TYPE_6__* %109)
  %111 = load i32, i32* @LK_EXCLUSIVE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* @LK_UPGRADE, align 4
  %117 = load i32, i32* @LK_RETRY, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @vn_lock(%struct.TYPE_6__* %115, i32 %118)
  %120 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @VI_DOOMED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* @EBADF, align 4
  store i32 %128, i32* %11, align 4
  br label %224

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129, %107
  %131 = load i32, i32* @VV_MD, align 4
  %132 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = call i32 @VOP_UNLOCK(%struct.TYPE_6__* %138, i32 0)
  %140 = load %struct.md_req*, %struct.md_req** %6, align 8
  %141 = getelementptr inbounds %struct.md_req, %struct.md_req* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %130
  %145 = load %struct.md_req*, %struct.md_req** %6, align 8
  %146 = getelementptr inbounds %struct.md_req, %struct.md_req* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.md_s*, %struct.md_s** %5, align 8
  %149 = getelementptr inbounds %struct.md_s, %struct.md_s* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %144, %130
  %151 = load %struct.md_req*, %struct.md_req** %6, align 8
  %152 = getelementptr inbounds %struct.md_req, %struct.md_req* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.md_req*, %struct.md_req** %6, align 8
  %157 = getelementptr inbounds %struct.md_req, %struct.md_req* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.md_s*, %struct.md_s** %5, align 8
  %160 = getelementptr inbounds %struct.md_s, %struct.md_s* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %150
  %162 = load %struct.md_s*, %struct.md_s** %5, align 8
  %163 = getelementptr inbounds %struct.md_s, %struct.md_s* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @snprintf(i32 %164, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %170)
  %172 = load %struct.md_req*, %struct.md_req** %6, align 8
  %173 = getelementptr inbounds %struct.md_req, %struct.md_req* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @MD_ASYNC, align 4
  %176 = load i32, i32* @MD_CACHE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @MD_FORCE, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @MD_VERIFY, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %174, %181
  %183 = load %struct.md_s*, %struct.md_s** %5, align 8
  %184 = getelementptr inbounds %struct.md_s, %struct.md_s* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @FWRITE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %161
  %190 = load i32, i32* @MD_READONLY, align 4
  %191 = load %struct.md_s*, %struct.md_s** %5, align 8
  %192 = getelementptr inbounds %struct.md_s, %struct.md_s* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %161
  %196 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load %struct.md_s*, %struct.md_s** %5, align 8
  %199 = getelementptr inbounds %struct.md_s, %struct.md_s* %198, i32 0, i32 3
  store %struct.TYPE_6__* %197, %struct.TYPE_6__** %199, align 8
  %200 = load %struct.md_s*, %struct.md_s** %5, align 8
  %201 = load %struct.thread*, %struct.thread** %7, align 8
  %202 = getelementptr inbounds %struct.thread, %struct.thread* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @mdsetcred(%struct.md_s* %200, i32 %203)
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %195
  %208 = load %struct.md_s*, %struct.md_s** %5, align 8
  %209 = getelementptr inbounds %struct.md_s, %struct.md_s* %208, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %209, align 8
  %210 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i32, i32* @LK_EXCLUSIVE, align 4
  %213 = load i32, i32* @LK_RETRY, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @vn_lock(%struct.TYPE_6__* %211, i32 %214)
  %216 = load i32, i32* @VV_MD, align 4
  %217 = xor i32 %216, -1
  %218 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, %217
  store i32 %222, i32* %220, align 4
  br label %224

223:                                              ; preds = %195
  store i32 0, i32* %4, align 4
  br label %237

224:                                              ; preds = %207, %127, %106, %95
  %225 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = call i32 @VOP_UNLOCK(%struct.TYPE_6__* %226, i32 0)
  %228 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load %struct.thread*, %struct.thread** %7, align 8
  %232 = getelementptr inbounds %struct.thread, %struct.thread* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.thread*, %struct.thread** %7, align 8
  %235 = call i32 @vn_close(%struct.TYPE_6__* %229, i32 %230, i32 %233, %struct.thread* %234)
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %224, %223, %84, %44, %29
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @copyinstr(i8*, i32, i32, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i64, i32, %struct.thread*) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.TYPE_6__*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.TYPE_6__*) #1

declare dso_local i32 @vn_lock(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @mdsetcred(%struct.md_s*, i32) #1

declare dso_local i32 @vn_close(%struct.TYPE_6__*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
