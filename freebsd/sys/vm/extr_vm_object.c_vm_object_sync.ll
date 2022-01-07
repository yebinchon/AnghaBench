; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, %struct.vnode*, %struct.TYPE_8__* }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@OBJT_VNODE = common dso_local global i64 0, align 8
@VV_NOSYNC = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@OBJPC_INVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@MNT_WAIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@OBJT_DEVICE = common dso_local global i64 0, align 8
@OBJPR_NOTMAPPED = common dso_local global i32 0, align 4
@old_msync = common dso_local global i64 0, align 8
@OBJPR_CLEANONLY = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_sync(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.mount*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %6, align 4
  br label %208

23:                                               ; preds = %5
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %18, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_8__* %25)
  br label %27

27:                                               ; preds = %58, %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %12, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_8__* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %8, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i64 @OFF_TO_IDX(i64 %48)
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %32
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @IDX_TO_OFF(i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %51, %32
  br label %27

59:                                               ; preds = %27
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OBJT_VNODE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %162

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = call i64 @vm_object_mightbedirty(%struct.TYPE_8__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %162

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load %struct.vnode*, %struct.vnode** %71, align 8
  store %struct.vnode* %72, %struct.vnode** %13, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VV_NOSYNC, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %162

78:                                               ; preds = %69
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %79)
  %81 = load %struct.vnode*, %struct.vnode** %13, align 8
  %82 = load i32, i32* @V_WAIT, align 4
  %83 = call i32 @vn_start_write(%struct.vnode* %81, %struct.mount** %14, i32 %82)
  %84 = load %struct.vnode*, %struct.vnode** %13, align 8
  %85 = load i32, i32* @LK_EXCLUSIVE, align 4
  %86 = load i32, i32* @LK_RETRY, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @vn_lock(%struct.vnode* %84, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %78
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @atop(i64 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %17, align 4
  br label %130

106:                                              ; preds = %97, %94, %91, %78
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @OBJPC_SYNC, align 4
  br label %115

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* @OBJPC_SYNC, align 4
  %121 = load i32, i32* @OBJPC_INVAL, align 4
  %122 = or i32 %120, %121
  br label %124

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i32 [ %122, %119 ], [ 0, %123 ]
  %126 = load i32, i32* %16, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %16, align 4
  %128 = load i8*, i8** @FALSE, align 8
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %124, %104
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_8__* %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @vm_object_page_clean(%struct.TYPE_8__* %133, i64 %134, i64 %137, i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %140)
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %130
  %145 = load %struct.vnode*, %struct.vnode** %13, align 8
  %146 = load i32, i32* @MNT_WAIT, align 4
  %147 = load i32, i32* @curthread, align 4
  %148 = call i32 @VOP_FSYNC(%struct.vnode* %145, i32 %146, i32 %147)
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %144, %130
  %150 = load %struct.vnode*, %struct.vnode** %13, align 8
  %151 = call i32 @VOP_UNLOCK(%struct.vnode* %150, i32 0)
  %152 = load %struct.mount*, %struct.mount** %14, align 8
  %153 = call i32 @vn_finished_write(%struct.mount* %152)
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i8*, i8** @FALSE, align 8
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %156, %149
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %161 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_8__* %160)
  br label %162

162:                                              ; preds = %159, %69, %65, %59
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @OBJT_VNODE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @OBJT_DEVICE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %168, %162
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %174
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @OBJT_DEVICE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @OBJPR_NOTMAPPED, align 4
  store i32 %184, i32* %16, align 4
  br label %192

185:                                              ; preds = %177
  %186 = load i64, i64* @old_msync, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 0, i32* %16, align 4
  br label %191

189:                                              ; preds = %185
  %190 = load i32, i32* @OBJPR_CLEANONLY, align 4
  store i32 %190, i32* %16, align 4
  br label %191

191:                                              ; preds = %189, %188
  br label %192

192:                                              ; preds = %191, %183
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = load i64, i64* %8, align 8
  %195 = call i64 @OFF_TO_IDX(i64 %194)
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i64, i64* @PAGE_MASK, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i64 @OFF_TO_IDX(i64 %200)
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @vm_object_page_remove(%struct.TYPE_8__* %193, i64 %195, i64 %201, i32 %202)
  br label %204

204:                                              ; preds = %192, %174, %168
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %205)
  %207 = load i32, i32* %18, align 4
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %204, %21
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__*) #1

declare dso_local i64 @OFF_TO_IDX(i64) #1

declare dso_local i64 @IDX_TO_OFF(i64) #1

declare dso_local i64 @vm_object_mightbedirty(%struct.TYPE_8__*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @vm_object_page_clean(%struct.TYPE_8__*, i64, i64, i32) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @vm_object_page_remove(%struct.TYPE_8__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
