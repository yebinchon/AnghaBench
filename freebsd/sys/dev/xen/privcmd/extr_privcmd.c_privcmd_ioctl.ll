; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ioctl_privcmd_hypercall = type { i32, i32*, i32 }
%struct.ioctl_privcmd_mmapbatch = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.privcmd_map*, %struct.TYPE_13__, i32 }
%struct.privcmd_map = type { i32*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.xen_add_to_physmap_range = type { i32, i32, i32, i32, i32, i32, i32 }

@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_SMAP = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i32 0, align 4
@privcmd_pg_ops = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@XENMAPSPACE_gmfn_foreign = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@M_PRIVCMD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@XENMEM_add_to_physmap_range = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64, i32, %struct.thread*)* @privcmd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @privcmd_ioctl(%struct.cdev* %0, i64 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ioctl_privcmd_hypercall*, align 8
  %14 = alloca %struct.ioctl_privcmd_mmapbatch*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.xen_add_to_physmap_range, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.privcmd_map*, align 8
  %27 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %28 = load i64, i64* %7, align 8
  switch i64 %28, label %375 [
    i64 129, label %29
    i64 128, label %87
  ]

29:                                               ; preds = %5
  %30 = load i64, i64* %8, align 8
  %31 = inttoptr i64 %30 to %struct.ioctl_privcmd_hypercall*
  store %struct.ioctl_privcmd_hypercall* %31, %struct.ioctl_privcmd_hypercall** %13, align 8
  %32 = load i32, i32* @cpu_stdext_feature, align 4
  %33 = load i32, i32* @CPUID_STDEXT_SMAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 (...) @stac()
  br label %38

38:                                               ; preds = %36, %29
  %39 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %40 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %43 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %48 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %53 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %58 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %63 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @privcmd_hypercall(i32 %41, i32 %46, i32 %51, i32 %56, i32 %61, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* @cpu_stdext_feature, align 4
  %69 = load i32, i32* @CPUID_STDEXT_SMAP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %38
  %73 = call i32 (...) @clac()
  br label %74

74:                                               ; preds = %72, %38
  %75 = load i32, i32* %11, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %80 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %11, align 4
  br label %86

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @xen_translate_error(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.ioctl_privcmd_hypercall*, %struct.ioctl_privcmd_hypercall** %13, align 8
  %85 = getelementptr inbounds %struct.ioctl_privcmd_hypercall, %struct.ioctl_privcmd_hypercall* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %81, %77
  br label %377

87:                                               ; preds = %5
  %88 = load i64, i64* %8, align 8
  %89 = inttoptr i64 %88 to %struct.ioctl_privcmd_mmapbatch*
  store %struct.ioctl_privcmd_mmapbatch* %89, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %90 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %91 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %96 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PAGE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94, %87
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %11, align 4
  br label %377

103:                                              ; preds = %94
  %104 = load %struct.thread*, %struct.thread** %10, align 8
  %105 = getelementptr inbounds %struct.thread, %struct.thread* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32* %109, i32** %15, align 8
  %110 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %111 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @VM_PROT_NONE, align 4
  %114 = call i32 @vm_map_lookup(i32** %15, i32 %112, i32 %113, %struct.TYPE_15__** %16, %struct.TYPE_14__** %17, i32* %18, i32* %19, i32* %20)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @KERN_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %103
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %11, align 4
  br label %377

120:                                              ; preds = %103
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %125 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %142, label %128

128:                                              ; preds = %120
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %133 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %136 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = mul nsw i32 %137, %138
  %140 = add nsw i32 %134, %139
  %141 = icmp ne i32 %131, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %128, %120
  %143 = load i32*, i32** %15, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %145 = call i32 @vm_map_lookup_done(i32* %143, %struct.TYPE_15__* %144)
  %146 = load i32, i32* @EINVAL, align 4
  store i32 %146, i32* %11, align 4
  br label %377

147:                                              ; preds = %128
  %148 = load i32*, i32** %15, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %150 = call i32 @vm_map_lookup_done(i32* %148, %struct.TYPE_15__* %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %147
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, @privcmd_pg_ops
  br i1 %162, label %163, label %165

163:                                              ; preds = %156, %147
  %164 = load i32, i32* @EINVAL, align 4
  store i32 %164, i32* %11, align 4
  br label %377

165:                                              ; preds = %156
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load %struct.privcmd_map*, %struct.privcmd_map** %167, align 8
  store %struct.privcmd_map* %168, %struct.privcmd_map** %26, align 8
  %169 = load i32, i32* @DOMID_SELF, align 4
  %170 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %21, i32 0, i32 6
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* @XENMAPSPACE_gmfn_foreign, align 4
  %172 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %21, i32 0, i32 5
  store i32 %171, i32* %172, align 4
  %173 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %174 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %21, i32 0, i32 4
  store i32 %175, i32* %176, align 4
  %177 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %178 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @UINT16_MAX, align 4
  %181 = call i32 @MIN(i32 %179, i32 %180)
  store i32 %181, i32* %27, align 4
  %182 = load i32, i32* %27, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 4, %183
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @M_PRIVCMD, align 4
  %187 = load i32, i32* @M_WAITOK, align 4
  %188 = call i32* @malloc(i32 %185, i32 %186, i32 %187)
  store i32* %188, i32** %22, align 8
  %189 = load i32, i32* %27, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 4, %190
  %192 = trunc i64 %191 to i32
  %193 = load i32, i32* @M_PRIVCMD, align 4
  %194 = load i32, i32* @M_WAITOK, align 4
  %195 = call i32* @malloc(i32 %192, i32 %193, i32 %194)
  store i32* %195, i32** %23, align 8
  %196 = load i32, i32* %27, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 4, %197
  %199 = trunc i64 %198 to i32
  %200 = load i32, i32* @M_PRIVCMD, align 4
  %201 = load i32, i32* @M_WAITOK, align 4
  %202 = call i32* @malloc(i32 %199, i32 %200, i32 %201)
  store i32* %202, i32** %24, align 8
  %203 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %21, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %22, align 8
  %206 = call i32 @set_xen_guest_handle(i32 %204, i32* %205)
  %207 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %21, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %23, align 8
  %210 = call i32 @set_xen_guest_handle(i32 %208, i32* %209)
  %211 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %21, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %24, align 8
  %214 = call i32 @set_xen_guest_handle(i32 %212, i32* %213)
  %215 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %216 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @M_PRIVCMD, align 4
  %219 = load i32, i32* @M_WAITOK, align 4
  %220 = load i32, i32* @M_ZERO, align 4
  %221 = or i32 %219, %220
  %222 = call i32* @BITSET_ALLOC(i32 %217, i32 %218, i32 %221)
  %223 = load %struct.privcmd_map*, %struct.privcmd_map** %26, align 8
  %224 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %223, i32 0, i32 0
  store i32* %222, i32** %224, align 8
  store i32 0, i32* %25, align 4
  br label %225

225:                                              ; preds = %347, %165
  %226 = load i32, i32* %25, align 4
  %227 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %228 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %351

231:                                              ; preds = %225
  %232 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %233 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %25, align 4
  %236 = sub nsw i32 %234, %235
  %237 = load i32, i32* @UINT16_MAX, align 4
  %238 = call i32 @MIN(i32 %236, i32 %237)
  store i32 %238, i32* %27, align 4
  %239 = load i32, i32* %27, align 4
  %240 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %21, i32 0, i32 0
  store i32 %239, i32* %240, align 4
  %241 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %242 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %25, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32*, i32** %22, align 8
  %248 = load i32, i32* %27, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 4, %249
  %251 = trunc i64 %250 to i32
  %252 = call i32 @copyin(i32* %246, i32* %247, i32 %251)
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %231
  br label %354

256:                                              ; preds = %231
  store i32 0, i32* %12, align 4
  br label %257

257:                                              ; preds = %276, %256
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %27, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %279

261:                                              ; preds = %257
  %262 = load %struct.privcmd_map*, %struct.privcmd_map** %26, align 8
  %263 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %25, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* @PAGE_SIZE, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %264, %269
  %271 = call i32 @atop(i32 %270)
  %272 = load i32*, i32** %23, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %271, i32* %275, align 4
  br label %276

276:                                              ; preds = %261
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %257

279:                                              ; preds = %257
  %280 = load i32*, i32** %24, align 8
  %281 = load i32, i32* %27, align 4
  %282 = sext i32 %281 to i64
  %283 = mul i64 4, %282
  %284 = trunc i64 %283 to i32
  %285 = call i32 @bzero(i32* %280, i32 %284)
  %286 = load i32, i32* @XENMEM_add_to_physmap_range, align 4
  %287 = call i32 @HYPERVISOR_memory_op(i32 %286, %struct.xen_add_to_physmap_range* %21)
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %279
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @xen_translate_error(i32 %291)
  store i32 %292, i32* %11, align 4
  br label %354

293:                                              ; preds = %279
  store i32 0, i32* %12, align 4
  br label %294

294:                                              ; preds = %327, %293
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* %27, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %330

298:                                              ; preds = %294
  %299 = load i32*, i32** %24, align 8
  %300 = load i32, i32* %12, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %326

305:                                              ; preds = %298
  %306 = load i32*, i32** %24, align 8
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @xen_translate_error(i32 %310)
  %312 = load i32*, i32** %24, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %311, i32* %315, align 4
  %316 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %317 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %25, align 4
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %319, %320
  %322 = load %struct.privcmd_map*, %struct.privcmd_map** %26, align 8
  %323 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = call i32 @BIT_SET(i32 %318, i32 %321, i32* %324)
  br label %326

326:                                              ; preds = %305, %298
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %12, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %12, align 4
  br label %294

330:                                              ; preds = %294
  %331 = load i32*, i32** %24, align 8
  %332 = load %struct.ioctl_privcmd_mmapbatch*, %struct.ioctl_privcmd_mmapbatch** %14, align 8
  %333 = getelementptr inbounds %struct.ioctl_privcmd_mmapbatch, %struct.ioctl_privcmd_mmapbatch* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %25, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %27, align 4
  %339 = sext i32 %338 to i64
  %340 = mul i64 4, %339
  %341 = trunc i64 %340 to i32
  %342 = call i32 @copyout(i32* %331, i32* %337, i32 %341)
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %11, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %330
  br label %354

346:                                              ; preds = %330
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %27, align 4
  %349 = load i32, i32* %25, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %25, align 4
  br label %225

351:                                              ; preds = %225
  %352 = load %struct.privcmd_map*, %struct.privcmd_map** %26, align 8
  %353 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %352, i32 0, i32 1
  store i32 1, i32* %353, align 8
  br label %354

354:                                              ; preds = %351, %345, %290, %255
  %355 = load i32*, i32** %22, align 8
  %356 = load i32, i32* @M_PRIVCMD, align 4
  %357 = call i32 @free(i32* %355, i32 %356)
  %358 = load i32*, i32** %23, align 8
  %359 = load i32, i32* @M_PRIVCMD, align 4
  %360 = call i32 @free(i32* %358, i32 %359)
  %361 = load i32*, i32** %24, align 8
  %362 = load i32, i32* @M_PRIVCMD, align 4
  %363 = call i32 @free(i32* %361, i32 %362)
  %364 = load %struct.privcmd_map*, %struct.privcmd_map** %26, align 8
  %365 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %354
  %369 = load %struct.privcmd_map*, %struct.privcmd_map** %26, align 8
  %370 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* @M_PRIVCMD, align 4
  %373 = call i32 @free(i32* %371, i32 %372)
  br label %374

374:                                              ; preds = %368, %354
  br label %377

375:                                              ; preds = %5
  %376 = load i32, i32* @ENOSYS, align 4
  store i32 %376, i32* %11, align 4
  br label %377

377:                                              ; preds = %375, %374, %163, %142, %118, %101, %86
  %378 = load i32, i32* %11, align 4
  ret i32 %378
}

declare dso_local i32 @stac(...) #1

declare dso_local i32 @privcmd_hypercall(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clac(...) #1

declare dso_local i32 @xen_translate_error(i32) #1

declare dso_local i32 @vm_map_lookup(i32**, i32, i32, %struct.TYPE_15__**, %struct.TYPE_14__**, i32*, i32*, i32*) #1

declare dso_local i32 @vm_map_lookup_done(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #1

declare dso_local i32* @BITSET_ALLOC(i32, i32, i32) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_add_to_physmap_range*) #1

declare dso_local i32 @BIT_SET(i32, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
