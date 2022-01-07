; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { %struct.ucred*, %struct.vattr*, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.vattr = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.vnode = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@VNON = common dso_local global i64 0, align 8
@VNOVAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca %struct.vop_setattr_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %2, align 8
  %8 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %3, align 8
  %11 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %2, align 8
  %12 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %11, i32 0, i32 1
  %13 = load %struct.vattr*, %struct.vattr** %12, align 8
  store %struct.vattr* %13, %struct.vattr** %4, align 8
  %14 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %2, align 8
  %15 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %14, i32 0, i32 0
  %16 = load %struct.ucred*, %struct.ucred** %15, align 8
  store %struct.ucred* %16, %struct.ucred** %5, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %6, align 8
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = call i32 @VOP_ISLOCKED(%struct.vnode* %18)
  %20 = call i32 @MPASS(i32 %19)
  store i32 0, i32* %7, align 4
  %21 = load %struct.vattr*, %struct.vattr** %4, align 8
  %22 = getelementptr inbounds %struct.vattr, %struct.vattr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VNON, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %68, label %26

26:                                               ; preds = %1
  %27 = load %struct.vattr*, %struct.vattr** %4, align 8
  %28 = getelementptr inbounds %struct.vattr, %struct.vattr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VNOVAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %68, label %32

32:                                               ; preds = %26
  %33 = load %struct.vattr*, %struct.vattr** %4, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VNOVAL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %68, label %38

38:                                               ; preds = %32
  %39 = load %struct.vattr*, %struct.vattr** %4, align 8
  %40 = getelementptr inbounds %struct.vattr, %struct.vattr* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VNOVAL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %68, label %44

44:                                               ; preds = %38
  %45 = load %struct.vattr*, %struct.vattr** %4, align 8
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VNOVAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %68, label %50

50:                                               ; preds = %44
  %51 = load %struct.vattr*, %struct.vattr** %4, align 8
  %52 = getelementptr inbounds %struct.vattr, %struct.vattr* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VNOVAL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load %struct.vattr*, %struct.vattr** %4, align 8
  %58 = getelementptr inbounds %struct.vattr, %struct.vattr* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VNOVAL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.vattr*, %struct.vattr** %4, align 8
  %64 = getelementptr inbounds %struct.vattr, %struct.vattr* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @VNOVAL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %56, %50, %44, %38, %32, %26, %1
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load %struct.vattr*, %struct.vattr** %4, align 8
  %75 = getelementptr inbounds %struct.vattr, %struct.vattr* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VNOVAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.vnode*, %struct.vnode** %3, align 8
  %81 = load %struct.vattr*, %struct.vattr** %4, align 8
  %82 = getelementptr inbounds %struct.vattr, %struct.vattr* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ucred*, %struct.ucred** %5, align 8
  %85 = load %struct.thread*, %struct.thread** %6, align 8
  %86 = call i32 @tmpfs_chflags(%struct.vnode* %80, i64 %83, %struct.ucred* %84, %struct.thread* %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %79, %73, %70
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.vattr*, %struct.vattr** %4, align 8
  %92 = getelementptr inbounds %struct.vattr, %struct.vattr* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VNOVAL, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.vnode*, %struct.vnode** %3, align 8
  %98 = load %struct.vattr*, %struct.vattr** %4, align 8
  %99 = getelementptr inbounds %struct.vattr, %struct.vattr* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ucred*, %struct.ucred** %5, align 8
  %102 = load %struct.thread*, %struct.thread** %6, align 8
  %103 = call i32 @tmpfs_chsize(%struct.vnode* %97, i64 %100, %struct.ucred* %101, %struct.thread* %102)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %96, %90, %87
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %104
  %108 = load %struct.vattr*, %struct.vattr** %4, align 8
  %109 = getelementptr inbounds %struct.vattr, %struct.vattr* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VNOVAL, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load %struct.vattr*, %struct.vattr** %4, align 8
  %115 = getelementptr inbounds %struct.vattr, %struct.vattr* %114, i32 0, i32 11
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VNOVAL, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113, %107
  %120 = load %struct.vnode*, %struct.vnode** %3, align 8
  %121 = load %struct.vattr*, %struct.vattr** %4, align 8
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %121, i32 0, i32 10
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.vattr*, %struct.vattr** %4, align 8
  %125 = getelementptr inbounds %struct.vattr, %struct.vattr* %124, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ucred*, %struct.ucred** %5, align 8
  %128 = load %struct.thread*, %struct.thread** %6, align 8
  %129 = call i32 @tmpfs_chown(%struct.vnode* %120, i64 %123, i64 %126, %struct.ucred* %127, %struct.thread* %128)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %119, %113, %104
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %130
  %134 = load %struct.vattr*, %struct.vattr** %4, align 8
  %135 = getelementptr inbounds %struct.vattr, %struct.vattr* %134, i32 0, i32 12
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @VNOVAL, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load %struct.vnode*, %struct.vnode** %3, align 8
  %141 = load %struct.vattr*, %struct.vattr** %4, align 8
  %142 = getelementptr inbounds %struct.vattr, %struct.vattr* %141, i32 0, i32 12
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ucred*, %struct.ucred** %5, align 8
  %145 = load %struct.thread*, %struct.thread** %6, align 8
  %146 = call i32 @tmpfs_chmod(%struct.vnode* %140, i64 %143, %struct.ucred* %144, %struct.thread* %145)
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %139, %133, %130
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %198

150:                                              ; preds = %147
  %151 = load %struct.vattr*, %struct.vattr** %4, align 8
  %152 = getelementptr inbounds %struct.vattr, %struct.vattr* %151, i32 0, i32 15
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @VNOVAL, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load %struct.vattr*, %struct.vattr** %4, align 8
  %159 = getelementptr inbounds %struct.vattr, %struct.vattr* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @VNOVAL, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %192, label %164

164:                                              ; preds = %157, %150
  %165 = load %struct.vattr*, %struct.vattr** %4, align 8
  %166 = getelementptr inbounds %struct.vattr, %struct.vattr* %165, i32 0, i32 14
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @VNOVAL, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load %struct.vattr*, %struct.vattr** %4, align 8
  %173 = getelementptr inbounds %struct.vattr, %struct.vattr* %172, i32 0, i32 14
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @VNOVAL, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %192, label %178

178:                                              ; preds = %171, %164
  %179 = load %struct.vattr*, %struct.vattr** %4, align 8
  %180 = getelementptr inbounds %struct.vattr, %struct.vattr* %179, i32 0, i32 13
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @VNOVAL, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %178
  %186 = load %struct.vattr*, %struct.vattr** %4, align 8
  %187 = getelementptr inbounds %struct.vattr, %struct.vattr* %186, i32 0, i32 13
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @VNOVAL, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %185, %171, %157
  %193 = load %struct.vnode*, %struct.vnode** %3, align 8
  %194 = load %struct.vattr*, %struct.vattr** %4, align 8
  %195 = load %struct.ucred*, %struct.ucred** %5, align 8
  %196 = load %struct.thread*, %struct.thread** %6, align 8
  %197 = call i32 @tmpfs_chtimes(%struct.vnode* %193, %struct.vattr* %194, %struct.ucred* %195, %struct.thread* %196)
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %192, %185, %178, %147
  %199 = load %struct.vnode*, %struct.vnode** %3, align 8
  %200 = call i32 @tmpfs_update(%struct.vnode* %199)
  %201 = load %struct.vnode*, %struct.vnode** %3, align 8
  %202 = call i32 @VOP_ISLOCKED(%struct.vnode* %201)
  %203 = call i32 @MPASS(i32 %202)
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @tmpfs_chflags(%struct.vnode*, i64, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @tmpfs_chsize(%struct.vnode*, i64, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @tmpfs_chown(%struct.vnode*, i64, i64, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @tmpfs_chmod(%struct.vnode*, i64, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @tmpfs_chtimes(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @tmpfs_update(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
