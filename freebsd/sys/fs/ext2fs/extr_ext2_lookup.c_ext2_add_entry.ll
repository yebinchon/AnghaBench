; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ext2fs_direct_2 = type { i32, i64, i32 }
%struct.inode = type { i64, i32, i64, i32 }
%struct.buf = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"ext2_direnter: compact1\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ext2_direnter: compact2\00", align 1
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_add_entry(%struct.vnode* %0, %struct.ext2fs_direct_2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ext2fs_direct_2*, align 8
  %6 = alloca %struct.ext2fs_direct_2*, align 8
  %7 = alloca %struct.ext2fs_direct_2*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %5, align 8
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = call %struct.inode* @VTOI(%struct.vnode* %16)
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %30, %2
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @ext2_blkatoff(%struct.vnode* %42, i32 %46, i8** %15, %struct.buf** %9)
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  br label %192

51:                                               ; preds = %41
  %52 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %53 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @EXT2_DIR_REC_LEN(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = bitcast i8* %56 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %57, %struct.ext2fs_direct_2** %6, align 8
  %58 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %59 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @EXT2_DIR_REC_LEN(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %63 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %68 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %100, %51
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %123

76:                                               ; preds = %70
  %77 = load i8*, i8** %15, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %81, %struct.ext2fs_direct_2** %7, align 8
  %82 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %83 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %89 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %91 = bitcast %struct.ext2fs_direct_2* %90 to i8*
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = bitcast i8* %94 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %95, %struct.ext2fs_direct_2** %6, align 8
  br label %100

96:                                               ; preds = %76
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %96, %86
  %101 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %102 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @EXT2_DIR_REC_LEN(i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %106 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %113 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %118 = ptrtoint %struct.ext2fs_direct_2* %117 to i32
  %119 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %120 = ptrtoint %struct.ext2fs_direct_2* %119 to i32
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @bcopy(i32 %118, i32 %120, i32 %121)
  br label %70

123:                                              ; preds = %70
  %124 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %125 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %128
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %137, %138
  %140 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %141 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %161

142:                                              ; preds = %123
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %142
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %151 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %154 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %156 = bitcast %struct.ext2fs_direct_2* %155 to i8*
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = bitcast i8* %159 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %160, %struct.ext2fs_direct_2** %6, align 8
  br label %161

161:                                              ; preds = %148, %136
  %162 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %163 = ptrtoint %struct.ext2fs_direct_2* %162 to i32
  %164 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %165 = ptrtoint %struct.ext2fs_direct_2* %164 to i32
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @bcopy(i32 %163, i32 %165, i32 %166)
  %168 = load %struct.inode*, %struct.inode** %8, align 8
  %169 = load %struct.buf*, %struct.buf** %9, align 8
  %170 = getelementptr inbounds %struct.buf, %struct.buf* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to %struct.ext2fs_direct_2*
  %173 = call i32 @ext2_dirent_csum_set(%struct.inode* %168, %struct.ext2fs_direct_2* %172)
  %174 = load %struct.vnode*, %struct.vnode** %4, align 8
  %175 = call i64 @DOINGASYNC(%struct.vnode* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %161
  %178 = load %struct.buf*, %struct.buf** %9, align 8
  %179 = call i32 @bdwrite(%struct.buf* %178)
  store i32 0, i32* %11, align 4
  br label %183

180:                                              ; preds = %161
  %181 = load %struct.buf*, %struct.buf** %9, align 8
  %182 = call i32 @bwrite(%struct.buf* %181)
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* @IN_CHANGE, align 4
  %185 = load i32, i32* @IN_UPDATE, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.inode*, %struct.inode** %8, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %183, %49
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext2_blkatoff(%struct.vnode*, i32, i8**, %struct.buf**) #1

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ext2_dirent_csum_set(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
