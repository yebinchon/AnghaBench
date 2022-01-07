; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.bufobj, i32* }
%struct.bufobj = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mount = type { i32 }

@V_NOWAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@V_WAIT = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i64 0, align 8
@VI_DOOMED = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ffs_rawread_sync: dirty bufs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*)* @ffs_rawread_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_rawread_sync(%struct.vnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufobj*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 1
  store %struct.bufobj* %10, %struct.bufobj** %6, align 8
  %11 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %12 = call i32 @BO_LOCK(%struct.bufobj* %11)
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = call i32 @VI_LOCK(%struct.vnode* %13)
  %15 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %16 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %1
  %20 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %21 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %187

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @vm_object_mightbedirty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %187

34:                                               ; preds = %30, %19, %1
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = call i32 @VI_UNLOCK(%struct.vnode* %35)
  %37 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %38 = call i32 @BO_UNLOCK(%struct.bufobj* %37)
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = load i32, i32* @V_NOWAIT, align 4
  %41 = call i64 @vn_start_write(%struct.vnode* %39, %struct.mount** %7, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %34
  %44 = load %struct.vnode*, %struct.vnode** %3, align 8
  %45 = call i64 @VOP_ISLOCKED(%struct.vnode* %44)
  %46 = load i64, i64* @LK_EXCLUSIVE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load %struct.vnode*, %struct.vnode** %3, align 8
  %52 = call i32 @VOP_UNLOCK(%struct.vnode* %51, i32 0)
  %53 = load %struct.vnode*, %struct.vnode** %3, align 8
  %54 = load i32, i32* @V_WAIT, align 4
  %55 = call i64 @vn_start_write(%struct.vnode* %53, %struct.mount** %7, i32 %54)
  %56 = load %struct.vnode*, %struct.vnode** %3, align 8
  %57 = load i64, i64* @LK_EXCLUSIVE, align 8
  %58 = call i32 @VOP_LOCK(%struct.vnode* %56, i64 %57)
  br label %70

59:                                               ; preds = %34
  %60 = load %struct.vnode*, %struct.vnode** %3, align 8
  %61 = call i64 @VOP_ISLOCKED(%struct.vnode* %60)
  %62 = load i64, i64* @LK_EXCLUSIVE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  %65 = load %struct.vnode*, %struct.vnode** %3, align 8
  %66 = load i64, i64* @LK_UPGRADE, align 8
  %67 = call i32 @VOP_LOCK(%struct.vnode* %65, i64 %66)
  br label %69

68:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %64
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.vnode*, %struct.vnode** %3, align 8
  %72 = call i32 @VI_LOCK(%struct.vnode* %71)
  %73 = load %struct.vnode*, %struct.vnode** %3, align 8
  %74 = getelementptr inbounds %struct.vnode, %struct.vnode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VI_DOOMED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %70
  %80 = load %struct.vnode*, %struct.vnode** %3, align 8
  %81 = call i32 @VI_UNLOCK(%struct.vnode* %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.vnode*, %struct.vnode** %3, align 8
  %86 = load i64, i64* @LK_DOWNGRADE, align 8
  %87 = call i32 @VOP_LOCK(%struct.vnode* %85, i64 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.mount*, %struct.mount** %7, align 8
  %90 = call i32 @vn_finished_write(%struct.mount* %89)
  %91 = load i32, i32* @EIO, align 4
  store i32 %91, i32* %2, align 4
  br label %193

92:                                               ; preds = %70
  %93 = load %struct.vnode*, %struct.vnode** %3, align 8
  %94 = getelementptr inbounds %struct.vnode, %struct.vnode* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load i32*, i32** %8, align 8
  %99 = call i64 @vm_object_mightbedirty(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load %struct.vnode*, %struct.vnode** %3, align 8
  %103 = call i32 @VI_UNLOCK(%struct.vnode* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @VM_OBJECT_WLOCK(i32* %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @OBJPC_SYNC, align 4
  %108 = call i32 @vm_object_page_clean(i32* %106, i32 0, i32 0, i32 %107)
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @VM_OBJECT_WUNLOCK(i32* %109)
  br label %114

111:                                              ; preds = %97, %92
  %112 = load %struct.vnode*, %struct.vnode** %3, align 8
  %113 = call i32 @VI_UNLOCK(%struct.vnode* %112)
  br label %114

114:                                              ; preds = %111, %101
  %115 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %116 = call i32 @BO_LOCK(%struct.bufobj* %115)
  %117 = load %struct.vnode*, %struct.vnode** %3, align 8
  %118 = getelementptr inbounds %struct.vnode, %struct.vnode* %117, i32 0, i32 1
  %119 = call i32 @bufobj_wwait(%struct.bufobj* %118, i32 0, i32 0)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %114
  %123 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %124 = call i32 @BO_UNLOCK(%struct.bufobj* %123)
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.vnode*, %struct.vnode** %3, align 8
  %129 = load i64, i64* @LK_DOWNGRADE, align 8
  %130 = call i32 @VOP_LOCK(%struct.vnode* %128, i64 %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.mount*, %struct.mount** %7, align 8
  %133 = call i32 @vn_finished_write(%struct.mount* %132)
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %193

135:                                              ; preds = %114
  %136 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %137 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %175

141:                                              ; preds = %135
  %142 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %143 = call i32 @BO_UNLOCK(%struct.bufobj* %142)
  %144 = load %struct.vnode*, %struct.vnode** %3, align 8
  %145 = load i32, i32* @MNT_WAIT, align 4
  %146 = call i32 @ffs_syncvnode(%struct.vnode* %144, i32 %145, i32 0)
  store i32 %146, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %141
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.vnode*, %struct.vnode** %3, align 8
  %153 = load i64, i64* @LK_DOWNGRADE, align 8
  %154 = call i32 @VOP_LOCK(%struct.vnode* %152, i64 %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = load %struct.mount*, %struct.mount** %7, align 8
  %157 = call i32 @vn_finished_write(%struct.mount* %156)
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %193

159:                                              ; preds = %141
  %160 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %161 = call i32 @BO_LOCK(%struct.bufobj* %160)
  %162 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %163 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %159
  %167 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %168 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166, %159
  %173 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %166
  br label %175

175:                                              ; preds = %174, %135
  %176 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %177 = call i32 @BO_UNLOCK(%struct.bufobj* %176)
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.vnode*, %struct.vnode** %3, align 8
  %182 = load i64, i64* @LK_DOWNGRADE, align 8
  %183 = call i32 @VOP_LOCK(%struct.vnode* %181, i64 %182)
  br label %184

184:                                              ; preds = %180, %175
  %185 = load %struct.mount*, %struct.mount** %7, align 8
  %186 = call i32 @vn_finished_write(%struct.mount* %185)
  br label %192

187:                                              ; preds = %30, %25
  %188 = load %struct.vnode*, %struct.vnode** %3, align 8
  %189 = call i32 @VI_UNLOCK(%struct.vnode* %188)
  %190 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %191 = call i32 @BO_UNLOCK(%struct.bufobj* %190)
  br label %192

192:                                              ; preds = %187, %184
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %155, %131, %88
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i64 @vm_object_mightbedirty(i32*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i64 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i64 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_LOCK(%struct.vnode*, i64) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_page_clean(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @bufobj_wwait(%struct.bufobj*, i32, i32) #1

declare dso_local i32 @ffs_syncvnode(%struct.vnode*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
