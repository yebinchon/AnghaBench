; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_openat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32*, i32, %struct.proc* }
%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.file = type { i32, i32, i32*, %struct.vnode* }
%struct.vnode = type { i64 }
%struct.nameidata = type { i32, %struct.filecaps, %struct.vnode* }
%struct.filecaps = type { i32 }

@CAP_LOOKUP = common dso_local global i32 0, align 4
@O_EXEC = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMASK = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4
@NI_LCF_STRICTRELATIVE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Unexpected fifo.\00", align 1
@FHASLOCK = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i32 0, align 4
@vnops = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"indx=%d, should be -1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_openat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.proc*, align 8
  %15 = alloca %struct.filedesc*, align 8
  %16 = alloca %struct.file*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.nameidata, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.filecaps*, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.thread*, %struct.thread** %8, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 3
  %26 = load %struct.proc*, %struct.proc** %25, align 8
  store %struct.proc* %26, %struct.proc** %14, align 8
  %27 = load %struct.proc*, %struct.proc** %14, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load %struct.filedesc*, %struct.filedesc** %28, align 8
  store %struct.filedesc* %29, %struct.filedesc** %15, align 8
  store i32 -1, i32* %22, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @AUDIT_ARG_FFLAGS(i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @AUDIT_ARG_MODE(i32 %32)
  %34 = load i32, i32* @CAP_LOOKUP, align 4
  %35 = call i32 @cap_rights_init(i32* %19, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @flags_to_rights(i32 %36, i32* %19)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @O_EXEC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %6
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @O_ACCMODE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %7, align 4
  br label %241

49:                                               ; preds = %42
  br label %62

50:                                               ; preds = %6
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @O_ACCMODE, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @O_ACCMODE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %7, align 4
  br label %241

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @FFLAGS(i32 %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %49
  %63 = load %struct.thread*, %struct.thread** %8, align 8
  %64 = call i32 @falloc_noinstall(%struct.thread* %63, %struct.file** %16)
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %21, align 4
  store i32 %68, i32* %7, align 4
  br label %241

69:                                               ; preds = %62
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @FMASK, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.file*, %struct.file** %16, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.filedesc*, %struct.filedesc** %15, align 8
  %77 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %75, %79
  %81 = load i32, i32* @ALLPERMS, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @S_ISTXT, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* @LOOKUP, align 4
  %87 = load i32, i32* @FOLLOW, align 4
  %88 = load i32, i32* @AUDITVNODE1, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.thread*, %struct.thread** %8, align 8
  %94 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %18, i32 %86, i32 %89, i32 %90, i8* %91, i32 %92, i32* %19, %struct.thread* %93)
  %95 = load %struct.thread*, %struct.thread** %8, align 8
  %96 = getelementptr inbounds %struct.thread, %struct.thread* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load %struct.file*, %struct.file** %16, align 8
  %99 = call i32 @vn_open(%struct.nameidata* %18, i32* %12, i32 %97, %struct.file* %98)
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %21, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %146

102:                                              ; preds = %69
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* @ENXIO, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.file*, %struct.file** %16, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, @badfileops
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %202

112:                                              ; preds = %106, %102
  %113 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NI_LCF_STRICTRELATIVE, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %112
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @ENODEV, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* @ENXIO, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %122, %118
  %127 = load %struct.thread*, %struct.thread** %8, align 8
  %128 = getelementptr inbounds %struct.thread, %struct.thread* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load %struct.thread*, %struct.thread** %8, align 8
  %133 = load %struct.filedesc*, %struct.filedesc** %15, align 8
  %134 = load %struct.thread*, %struct.thread** %8, align 8
  %135 = getelementptr inbounds %struct.thread, %struct.thread* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @dupfdopen(%struct.thread* %132, %struct.filedesc* %133, i64 %137, i32 %138, i32 %139, i32* %22)
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  br label %202

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %126, %122, %112
  br label %229

146:                                              ; preds = %69
  %147 = load %struct.thread*, %struct.thread** %8, align 8
  %148 = getelementptr inbounds %struct.thread, %struct.thread* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %150 = call i32 @NDFREE(%struct.nameidata* %18, i32 %149)
  %151 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 2
  %152 = load %struct.vnode*, %struct.vnode** %151, align 8
  store %struct.vnode* %152, %struct.vnode** %17, align 8
  %153 = load %struct.vnode*, %struct.vnode** %17, align 8
  %154 = load %struct.file*, %struct.file** %16, align 8
  %155 = getelementptr inbounds %struct.file, %struct.file* %154, i32 0, i32 3
  store %struct.vnode* %153, %struct.vnode** %155, align 8
  %156 = load %struct.file*, %struct.file** %16, align 8
  %157 = getelementptr inbounds %struct.file, %struct.file* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, @badfileops
  br i1 %159, label %160, label %183

160:                                              ; preds = %146
  %161 = load %struct.vnode*, %struct.vnode** %17, align 8
  %162 = getelementptr inbounds %struct.vnode, %struct.vnode* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VFIFO, align 8
  %165 = icmp ne i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @KASSERT(i32 %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %168 = load %struct.file*, %struct.file** %16, align 8
  %169 = getelementptr inbounds %struct.file, %struct.file* %168, i32 0, i32 1
  store i32 1, i32* %169, align 4
  %170 = load %struct.file*, %struct.file** %16, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @FMASK, align 4
  %173 = and i32 %171, %172
  %174 = load %struct.file*, %struct.file** %16, align 8
  %175 = getelementptr inbounds %struct.file, %struct.file* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FHASLOCK, align 4
  %178 = and i32 %176, %177
  %179 = or i32 %173, %178
  %180 = load i32, i32* @DTYPE_VNODE, align 4
  %181 = load %struct.vnode*, %struct.vnode** %17, align 8
  %182 = call i32 @finit(%struct.file* %170, i32 %179, i32 %180, %struct.vnode* %181, i32* @vnops)
  br label %183

183:                                              ; preds = %160, %146
  %184 = load %struct.vnode*, %struct.vnode** %17, align 8
  %185 = call i32 @VOP_UNLOCK(%struct.vnode* %184, i32 0)
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @O_TRUNC, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %183
  %191 = load %struct.file*, %struct.file** %16, align 8
  %192 = load %struct.thread*, %struct.thread** %8, align 8
  %193 = getelementptr inbounds %struct.thread, %struct.thread* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.thread*, %struct.thread** %8, align 8
  %196 = call i32 @fo_truncate(%struct.file* %191, i32 0, i32 %194, %struct.thread* %195)
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %229

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %183
  br label %202

202:                                              ; preds = %201, %143, %111
  %203 = load i32, i32* %22, align 4
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %217

205:                                              ; preds = %202
  store %struct.filecaps* null, %struct.filecaps** %23, align 8
  %206 = load %struct.thread*, %struct.thread** %8, align 8
  %207 = load %struct.file*, %struct.file** %16, align 8
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.filecaps*, %struct.filecaps** %23, align 8
  %210 = call i32 @finstall(%struct.thread* %206, %struct.file* %207, i32* %22, i32 %208, %struct.filecaps* %209)
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %21, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %215 = call i32 @filecaps_free(%struct.filecaps* %214)
  br label %229

216:                                              ; preds = %205
  br label %220

217:                                              ; preds = %202
  %218 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %219 = call i32 @filecaps_free(%struct.filecaps* %218)
  br label %220

220:                                              ; preds = %217, %216
  %221 = load %struct.file*, %struct.file** %16, align 8
  %222 = load %struct.thread*, %struct.thread** %8, align 8
  %223 = call i32 @fdrop(%struct.file* %221, %struct.thread* %222)
  %224 = load i32, i32* %22, align 4
  %225 = load %struct.thread*, %struct.thread** %8, align 8
  %226 = getelementptr inbounds %struct.thread, %struct.thread* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 %224, i32* %228, align 4
  store i32 0, i32* %7, align 4
  br label %241

229:                                              ; preds = %213, %199, %145
  %230 = load i32, i32* %22, align 4
  %231 = icmp eq i32 %230, -1
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %22, align 4
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = call i32 @KASSERT(i32 %232, i8* %235)
  %237 = load %struct.file*, %struct.file** %16, align 8
  %238 = load %struct.thread*, %struct.thread** %8, align 8
  %239 = call i32 @fdrop(%struct.file* %237, %struct.thread* %238)
  %240 = load i32, i32* %21, align 4
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %229, %220, %67, %56, %47
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i32 @AUDIT_ARG_FFLAGS(i32) #1

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @flags_to_rights(i32, i32*) #1

declare dso_local i32 @FFLAGS(i32) #1

declare dso_local i32 @falloc_noinstall(%struct.thread*, %struct.file**) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, %struct.file*) #1

declare dso_local i32 @dupfdopen(%struct.thread*, %struct.filedesc*, i64, i32, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.vnode*, i32*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @fo_truncate(%struct.file*, i32, i32, %struct.thread*) #1

declare dso_local i32 @finstall(%struct.thread*, %struct.file*, i32*, i32, %struct.filecaps*) #1

declare dso_local i32 @filecaps_free(%struct.filecaps*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
