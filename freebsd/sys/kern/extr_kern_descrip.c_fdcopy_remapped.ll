; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcopy_remapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcopy_remapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i32, i64, i32, %struct.filedescent* }
%struct.filedescent = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DFLAG_PASSABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdcopy_remapped(%struct.filedesc* %0, i32* %1, i64 %2, %struct.filedesc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.filedesc**, align 8
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca %struct.filedescent*, align 8
  %12 = alloca %struct.filedescent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.filedesc* %0, %struct.filedesc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.filedesc** %3, %struct.filedesc*** %9, align 8
  %15 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %16 = icmp ne %struct.filedesc* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %20 = call %struct.filedesc* @fdinit(%struct.filedesc* %19, i32 1)
  store %struct.filedesc* %20, %struct.filedesc** %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %23 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @E2BIG, align 4
  store i32 %29, i32* %13, align 4
  br label %131

30:                                               ; preds = %4
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %33 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %118, %30
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %53 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46, %39
  %57 = load i32, i32* @EBADF, align 4
  store i32 %57, i32* %13, align 4
  br label %131

58:                                               ; preds = %46
  %59 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %60 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %59, i32 0, i32 3
  %61 = load %struct.filedescent*, %struct.filedescent** %60, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %61, i64 %67
  store %struct.filedescent* %68, %struct.filedescent** %12, align 8
  %69 = load %struct.filedescent*, %struct.filedescent** %12, align 8
  %70 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp eq %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @EBADF, align 4
  store i32 %74, i32* %13, align 4
  br label %131

75:                                               ; preds = %58
  %76 = load %struct.filedescent*, %struct.filedescent** %12, align 8
  %77 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DFLAG_PASSABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %13, align 4
  br label %131

88:                                               ; preds = %75
  %89 = load %struct.filedescent*, %struct.filedescent** %11, align 8
  %90 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @fhold(%struct.TYPE_4__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @EBADF, align 4
  store i32 %95, i32* %13, align 4
  br label %131

96:                                               ; preds = %88
  %97 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %98 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %97, i32 0, i32 3
  %99 = load %struct.filedescent*, %struct.filedescent** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %99, i64 %101
  store %struct.filedescent* %102, %struct.filedescent** %11, align 8
  %103 = load %struct.filedescent*, %struct.filedescent** %11, align 8
  %104 = load %struct.filedescent*, %struct.filedescent** %12, align 8
  %105 = bitcast %struct.filedescent* %103 to i8*
  %106 = bitcast %struct.filedescent* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = load %struct.filedescent*, %struct.filedescent** %12, align 8
  %108 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %107, i32 0, i32 0
  %109 = load %struct.filedescent*, %struct.filedescent** %11, align 8
  %110 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %109, i32 0, i32 0
  %111 = call i32 @filecaps_copy(i32* %108, i32* %110, i32 1)
  %112 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @fdused_init(%struct.filedesc* %112, i32 %113)
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %117 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %96
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %34

121:                                              ; preds = %34
  %122 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %123 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %126 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %128 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %127)
  %129 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %130 = load %struct.filedesc**, %struct.filedesc*** %9, align 8
  store %struct.filedesc* %129, %struct.filedesc** %130, align 8
  store i32 0, i32* %5, align 4
  br label %137

131:                                              ; preds = %94, %86, %73, %56, %28
  %132 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %133 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %132)
  %134 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %135 = call i32 @fdescfree_remapped(%struct.filedesc* %134)
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %131, %121
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.filedesc* @fdinit(%struct.filedesc*, i32) #1

declare dso_local i32 @fhold(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @filecaps_copy(i32*, i32*, i32) #1

declare dso_local i32 @fdused_init(%struct.filedesc*, i32) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @fdescfree_remapped(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
