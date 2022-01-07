; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_read_args = type { i32, %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i64 }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.udf_node = type { %struct.udf_mnt*, %struct.file_entry* }
%struct.udf_mnt = type { i64 }
%struct.file_entry = type { i32, i32, i32, i32* }
%struct.buf = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@MNT_NOCLUSTERR = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @udf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.udf_node*, align 8
  %7 = alloca %struct.udf_mnt*, align 8
  %8 = alloca %struct.file_entry*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  %19 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %19, i32 0, i32 2
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %4, align 8
  %22 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %22, i32 0, i32 1
  %24 = load %struct.uio*, %struct.uio** %23, align 8
  store %struct.uio* %24, %struct.uio** %5, align 8
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = call %struct.udf_node* @VTON(%struct.vnode* %25)
  store %struct.udf_node* %26, %struct.udf_node** %6, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.uio*, %struct.uio** %5, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %221

32:                                               ; preds = %1
  %33 = load %struct.uio*, %struct.uio** %5, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %2, align 4
  br label %221

39:                                               ; preds = %32
  %40 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %41 = call i64 @is_data_in_fentry(%struct.udf_node* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %45 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %44, i32 0, i32 1
  %46 = load %struct.file_entry*, %struct.file_entry** %45, align 8
  store %struct.file_entry* %46, %struct.file_entry** %8, align 8
  %47 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %48 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %51 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @le32toh(i32 %52)
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32* %54, i32** %10, align 8
  %55 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %56 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le32toh(i32 %57)
  store i64 %58, i64* %14, align 8
  %59 = load %struct.uio*, %struct.uio** %5, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.uio*, %struct.uio** %5, align 8
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %221

70:                                               ; preds = %43
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %15, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.uio*, %struct.uio** %5, align 8
  %79 = getelementptr inbounds %struct.uio, %struct.uio* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i64, i64* %15, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.uio*, %struct.uio** %5, align 8
  %85 = call i32 @uiomove(i32* %81, i32 %83, %struct.uio* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %2, align 4
  br label %221

87:                                               ; preds = %39
  %88 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %89 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %88, i32 0, i32 1
  %90 = load %struct.file_entry*, %struct.file_entry** %89, align 8
  %91 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @le64toh(i32 %92)
  store i64 %93, i64* %14, align 8
  %94 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %95 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %94, i32 0, i32 0
  %96 = load %struct.udf_mnt*, %struct.udf_mnt** %95, align 8
  store %struct.udf_mnt* %96, %struct.udf_mnt** %7, align 8
  br label %97

97:                                               ; preds = %217, %87
  %98 = load %struct.udf_mnt*, %struct.udf_mnt** %7, align 8
  %99 = load %struct.uio*, %struct.uio** %5, align 8
  %100 = getelementptr inbounds %struct.uio, %struct.uio* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 @lblkno(%struct.udf_mnt* %98, i32 %102)
  store i64 %103, i64* %11, align 8
  %104 = load %struct.udf_mnt*, %struct.udf_mnt** %7, align 8
  %105 = load %struct.uio*, %struct.uio** %5, align 8
  %106 = getelementptr inbounds %struct.uio, %struct.uio* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i64 @blkoff(%struct.udf_mnt* %104, i32 %108)
  store i64 %109, i64* %18, align 8
  %110 = load %struct.udf_mnt*, %struct.udf_mnt** %7, align 8
  %111 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %18, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load %struct.uio*, %struct.uio** %5, align 8
  %116 = getelementptr inbounds %struct.uio, %struct.uio* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @min(i64 %114, i64 %117)
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.uio*, %struct.uio** %5, align 8
  %121 = getelementptr inbounds %struct.uio, %struct.uio* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %221

127:                                              ; preds = %97
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %15, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i64, i64* %13, align 8
  store i64 %132, i64* %15, align 8
  br label %133

133:                                              ; preds = %131, %127
  %134 = load %struct.udf_mnt*, %struct.udf_mnt** %7, align 8
  %135 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %12, align 8
  %139 = load %struct.vnode*, %struct.vnode** %4, align 8
  %140 = getelementptr inbounds %struct.vnode, %struct.vnode* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MNT_NOCLUSTERR, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %133
  %148 = load %struct.udf_mnt*, %struct.udf_mnt** %7, align 8
  %149 = load i64, i64* %12, align 8
  %150 = call i64 @lblktosize(%struct.udf_mnt* %148, i64 %149)
  %151 = load i64, i64* %14, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load %struct.vnode*, %struct.vnode** %4, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %17, align 8
  %158 = load i32, i32* @NOCRED, align 4
  %159 = load %struct.uio*, %struct.uio** %5, align 8
  %160 = getelementptr inbounds %struct.uio, %struct.uio* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %163 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 16
  %166 = call i32 @cluster_read(%struct.vnode* %154, i64 %155, i64 %156, i64 %157, i32 %158, i64 %161, i32 %165, i32 0, %struct.buf** %9)
  store i32 %166, i32* %16, align 4
  br label %173

167:                                              ; preds = %147
  %168 = load %struct.vnode*, %struct.vnode** %4, align 8
  %169 = load i64, i64* %11, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i32, i32* @NOCRED, align 4
  %172 = call i32 @bread(%struct.vnode* %168, i64 %169, i64 %170, i32 %171, %struct.buf** %9)
  store i32 %172, i32* %16, align 4
  br label %173

173:                                              ; preds = %167, %153
  br label %180

174:                                              ; preds = %133
  %175 = load %struct.vnode*, %struct.vnode** %4, align 8
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %17, align 8
  %178 = load i32, i32* @NOCRED, align 4
  %179 = call i32 @bread(%struct.vnode* %175, i64 %176, i64 %177, i32 %178, %struct.buf** %9)
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %174, %173
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.buf*, %struct.buf** %9, align 8
  %185 = call i32 @brelse(%struct.buf* %184)
  %186 = load i32, i32* %16, align 4
  store i32 %186, i32* %2, align 4
  br label %221

187:                                              ; preds = %180
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load %struct.buf*, %struct.buf** %9, align 8
  %191 = getelementptr inbounds %struct.buf, %struct.buf* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = call i64 @min(i64 %188, i64 %193)
  store i64 %194, i64* %15, align 8
  %195 = load %struct.buf*, %struct.buf** %9, align 8
  %196 = getelementptr inbounds %struct.buf, %struct.buf* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %18, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i64, i64* %15, align 8
  %201 = trunc i64 %200 to i32
  %202 = load %struct.uio*, %struct.uio** %5, align 8
  %203 = call i32 @uiomove(i32* %199, i32 %201, %struct.uio* %202)
  store i32 %203, i32* %16, align 4
  %204 = load %struct.buf*, %struct.buf** %9, align 8
  %205 = call i32 @brelse(%struct.buf* %204)
  br label %206

206:                                              ; preds = %187
  %207 = load i32, i32* %16, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load %struct.uio*, %struct.uio** %5, align 8
  %211 = getelementptr inbounds %struct.uio, %struct.uio* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i64, i64* %15, align 8
  %216 = icmp ne i64 %215, 0
  br label %217

217:                                              ; preds = %214, %209, %206
  %218 = phi i1 [ false, %209 ], [ false, %206 ], [ %216, %214 ]
  br i1 %218, label %97, label %219

219:                                              ; preds = %217
  %220 = load i32, i32* %16, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %219, %183, %126, %76, %69, %37, %31
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.udf_node* @VTON(%struct.vnode*) #1

declare dso_local i64 @is_data_in_fentry(%struct.udf_node*) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i64 @lblkno(%struct.udf_mnt*, i32) #1

declare dso_local i64 @blkoff(%struct.udf_mnt*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @lblktosize(%struct.udf_mnt*, i64) #1

declare dso_local i32 @cluster_read(%struct.vnode*, i64, i64, i64, i32, i64, i32, i32, %struct.buf**) #1

declare dso_local i32 @bread(%struct.vnode*, i64, i64, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
