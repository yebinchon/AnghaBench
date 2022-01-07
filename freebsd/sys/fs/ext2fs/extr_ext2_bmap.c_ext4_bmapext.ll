; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext4_bmapext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext4_bmapext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.inode = type { i64, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i64, i64, i64, i64 }
%struct.ext4_extent_path = type { %struct.ext4_extent* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_bmapext(%struct.vnode* %0, i64 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.m_ext2fs*, align 8
  %14 = alloca %struct.ext4_extent_header*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca %struct.ext4_extent_path*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.ext4_extent_path* null, %struct.ext4_extent_path** %16, align 8
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = call %struct.inode* @VTOI(%struct.vnode* %20)
  store %struct.inode* %21, %struct.inode** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %12, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.m_ext2fs*, %struct.m_ext2fs** %23, align 8
  store %struct.m_ext2fs* %24, %struct.m_ext2fs** %13, align 8
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %17, align 8
  %26 = load %struct.inode*, %struct.inode** %12, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ext4_extent_header*
  store %struct.ext4_extent_header* %29, %struct.ext4_extent_header** %14, align 8
  %30 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %14, align 8
  %31 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 -1, i32* %33, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32*, i32** %10, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %5
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** %11, align 8
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = load i64, i64* %17, align 8
  %46 = call i32 @ext4_ext_find_extent(%struct.inode* %44, i64 %45, %struct.ext4_extent_path** %16)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %6, align 4
  br label %162

51:                                               ; preds = %43
  %52 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %16, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %52, i64 %54
  %56 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %55, i32 0, i32 0
  %57 = load %struct.ext4_extent*, %struct.ext4_extent** %56, align 8
  store %struct.ext4_extent* %57, %struct.ext4_extent** %15, align 8
  %58 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %59 = icmp ne %struct.ext4_extent* %58, null
  br i1 %59, label %60, label %158

60:                                               ; preds = %51
  %61 = load i64, i64* %17, align 8
  %62 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %63 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %71 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %17, align 8
  %74 = sub nsw i64 %72, %73
  %75 = sub nsw i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %66
  br label %157

79:                                               ; preds = %60
  %80 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %81 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %17, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %140

85:                                               ; preds = %79
  %86 = load i64, i64* %17, align 8
  %87 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %88 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %91 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = icmp slt i64 %86, %93
  br i1 %94, label %95, label %140

95:                                               ; preds = %85
  %96 = load %struct.m_ext2fs*, %struct.m_ext2fs** %13, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %99 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %103 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %106 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = shl i64 %107, 32
  %109 = or i64 %104, %108
  %110 = add nsw i64 %101, %109
  %111 = call i32 @fsbtodb(%struct.m_ext2fs* %96, i64 %110)
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %95
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %117 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %121 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = sub nsw i64 %118, %123
  %125 = sub nsw i64 %124, 1
  %126 = trunc i64 %125 to i32
  %127 = load i32*, i32** %10, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %115, %95
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i64, i64* %17, align 8
  %133 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %134 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %132, %135
  %137 = trunc i64 %136 to i32
  %138 = load i32*, i32** %11, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %128
  br label %156

140:                                              ; preds = %85, %79
  %141 = load i32*, i32** %11, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %145 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %17, align 8
  %148 = add nsw i64 %146, %147
  %149 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %150 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = trunc i64 %152 to i32
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %143, %140
  br label %156

156:                                              ; preds = %155, %139
  br label %157

157:                                              ; preds = %156, %78
  br label %158

158:                                              ; preds = %157, %51
  %159 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %16, align 8
  %160 = call i32 @ext4_ext_path_free(%struct.ext4_extent_path* %159)
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %49
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext4_ext_find_extent(%struct.inode*, i64, %struct.ext4_extent_path**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i64) #1

declare dso_local i32 @ext4_ext_path_free(%struct.ext4_extent_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
