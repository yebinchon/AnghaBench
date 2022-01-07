; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_lookup_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode** }
%struct.componentname = type { i8*, i32, i32, i64, %struct.thread* }
%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.file = type { i32 }
%struct.fdesc_get_ino_args = type { i32, %struct.thread*, %struct.file*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@ISLASTCN = common dso_local global i32 0, align 4
@DELETE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@Froot = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@cap_no_rights = common dso_local global i32 0, align 4
@FD_DESC = common dso_local global i64 0, align 8
@LK_RETRY = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@Fdesc = common dso_local global i32 0, align 4
@fdesc_get_ino_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lookup_args*)* @fdesc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_lookup(%struct.vop_lookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_lookup_args*, align 8
  %4 = alloca %struct.vnode**, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.fdesc_get_ino_args, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vnode*, align 8
  store %struct.vop_lookup_args* %0, %struct.vop_lookup_args** %3, align 8
  %16 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %16, i32 0, i32 2
  %18 = load %struct.vnode**, %struct.vnode*** %17, align 8
  store %struct.vnode** %18, %struct.vnode*** %4, align 8
  %19 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %19, i32 0, i32 1
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %5, align 8
  %22 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %22, i32 0, i32 0
  %24 = load %struct.componentname*, %struct.componentname** %23, align 8
  store %struct.componentname* %24, %struct.componentname** %6, align 8
  %25 = load %struct.componentname*, %struct.componentname** %6, align 8
  %26 = getelementptr inbounds %struct.componentname, %struct.componentname* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load %struct.componentname*, %struct.componentname** %6, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 4
  %30 = load %struct.thread*, %struct.thread** %29, align 8
  store %struct.thread* %30, %struct.thread** %8, align 8
  %31 = load %struct.componentname*, %struct.componentname** %6, align 8
  %32 = getelementptr inbounds %struct.componentname, %struct.componentname* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.componentname*, %struct.componentname** %6, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISLASTCN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %1
  %41 = load %struct.componentname*, %struct.componentname** %6, align 8
  %42 = getelementptr inbounds %struct.componentname, %struct.componentname* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DELETE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.componentname*, %struct.componentname** %6, align 8
  %48 = getelementptr inbounds %struct.componentname, %struct.componentname* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RENAME, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @EROFS, align 4
  store i32 %53, i32* %14, align 4
  br label %187

54:                                               ; preds = %46, %1
  %55 = load %struct.componentname*, %struct.componentname** %6, align 8
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.vnode*, %struct.vnode** %5, align 8
  %66 = load %struct.vnode**, %struct.vnode*** %4, align 8
  store %struct.vnode* %65, %struct.vnode** %66, align 8
  %67 = load %struct.vnode*, %struct.vnode** %5, align 8
  %68 = call i32 @VREF(%struct.vnode* %67)
  store i32 0, i32* %2, align 4
  br label %190

69:                                               ; preds = %59, %54
  %70 = load %struct.vnode*, %struct.vnode** %5, align 8
  %71 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @Froot, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @ENOTDIR, align 4
  store i32 %77, i32* %14, align 4
  br label %187

78:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 48
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @ENOENT, align 4
  store i32 %87, i32* %14, align 4
  br label %187

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %119, %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp slt i32 %96, 48
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sgt i32 %101, 57
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @ENOENT, align 4
  store i32 %104, i32* %14, align 4
  br label %187

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  %107 = mul nsw i32 10, %106
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  %112 = add nsw i32 %107, %111
  %113 = sub nsw i32 %112, 48
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @ENOENT, align 4
  store i32 %118, i32* %14, align 4
  br label %187

119:                                              ; preds = %105
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %12, align 4
  br label %89

121:                                              ; preds = %89
  %122 = load %struct.thread*, %struct.thread** %8, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @fget(%struct.thread* %122, i32 %123, i32* @cap_no_rights, %struct.file** %9)
  store i32 %124, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %187

127:                                              ; preds = %121
  %128 = load %struct.vnode*, %struct.vnode** %5, align 8
  %129 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %128)
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @FD_DESC, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = icmp eq i64 %131, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %127
  %138 = load %struct.vnode*, %struct.vnode** %5, align 8
  %139 = call i32 @vhold(%struct.vnode* %138)
  %140 = load %struct.vnode*, %struct.vnode** %5, align 8
  %141 = call i32 @VOP_UNLOCK(%struct.vnode* %140, i32 0)
  %142 = load %struct.file*, %struct.file** %9, align 8
  %143 = load %struct.thread*, %struct.thread** %8, align 8
  %144 = call i32 @fdrop(%struct.file* %142, %struct.thread* %143)
  %145 = load %struct.vnode*, %struct.vnode** %5, align 8
  %146 = load i32, i32* @LK_RETRY, align 4
  %147 = load i32, i32* @LK_EXCLUSIVE, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @vn_lock(%struct.vnode* %145, i32 %148)
  %150 = load %struct.vnode*, %struct.vnode** %5, align 8
  %151 = call i32 @vdrop(%struct.vnode* %150)
  %152 = load %struct.vnode*, %struct.vnode** %5, align 8
  store %struct.vnode* %152, %struct.vnode** %15, align 8
  %153 = load %struct.vnode*, %struct.vnode** %5, align 8
  %154 = getelementptr inbounds %struct.vnode, %struct.vnode* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @VI_DOOMED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %137
  %160 = load i32, i32* @ENOENT, align 4
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %159, %137
  br label %180

162:                                              ; preds = %127
  %163 = load i32, i32* @Fdesc, align 4
  %164 = getelementptr inbounds %struct.fdesc_get_ino_args, %struct.fdesc_get_ino_args* %10, i32 0, i32 4
  store i32 %163, i32* %164, align 8
  %165 = load i32, i32* %12, align 4
  %166 = getelementptr inbounds %struct.fdesc_get_ino_args, %struct.fdesc_get_ino_args* %10, i32 0, i32 0
  store i32 %165, i32* %166, align 8
  %167 = load i64, i64* @FD_DESC, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = getelementptr inbounds %struct.fdesc_get_ino_args, %struct.fdesc_get_ino_args* %10, i32 0, i32 3
  store i64 %170, i64* %171, align 8
  %172 = load %struct.file*, %struct.file** %9, align 8
  %173 = getelementptr inbounds %struct.fdesc_get_ino_args, %struct.fdesc_get_ino_args* %10, i32 0, i32 2
  store %struct.file* %172, %struct.file** %173, align 8
  %174 = load %struct.thread*, %struct.thread** %8, align 8
  %175 = getelementptr inbounds %struct.fdesc_get_ino_args, %struct.fdesc_get_ino_args* %10, i32 0, i32 1
  store %struct.thread* %174, %struct.thread** %175, align 8
  %176 = load %struct.vnode*, %struct.vnode** %5, align 8
  %177 = load i32, i32* @fdesc_get_ino_alloc, align 4
  %178 = load i32, i32* @LK_EXCLUSIVE, align 4
  %179 = call i32 @vn_vget_ino_gen(%struct.vnode* %176, i32 %177, %struct.fdesc_get_ino_args* %10, i32 %178, %struct.vnode** %15)
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %162, %161
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %187

184:                                              ; preds = %180
  %185 = load %struct.vnode*, %struct.vnode** %15, align 8
  %186 = load %struct.vnode**, %struct.vnode*** %4, align 8
  store %struct.vnode* %185, %struct.vnode** %186, align 8
  store i32 0, i32* %2, align 4
  br label %190

187:                                              ; preds = %183, %126, %117, %103, %86, %76, %52
  %188 = load %struct.vnode**, %struct.vnode*** %4, align 8
  store %struct.vnode* null, %struct.vnode** %188, align 8
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %187, %184, %64
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local %struct.TYPE_2__* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @vn_vget_ino_gen(%struct.vnode*, i32, %struct.fdesc_get_ino_args*, i32, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
