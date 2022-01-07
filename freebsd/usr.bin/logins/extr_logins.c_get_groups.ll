; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_get_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_get_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i8* }
%struct.group = type { i8*, i8*, i32**, i32 }

@ngrps = common dso_local global i32 0, align 4
@grpsz = common dso_local global i32 0, align 4
@grps = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_groups() #0 {
  %1 = alloca %struct.group*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @setgrent()
  br label %5

5:                                                ; preds = %129, %0
  %6 = load i32, i32* @ngrps, align 4
  %7 = load i32, i32* @grpsz, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load i32, i32* @grpsz, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @grpsz, align 4
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 128, %14 ]
  %17 = load i32, i32* @grpsz, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* @grpsz, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %20 = load i32, i32* @grpsz, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_4__* @xrealloc(%struct.TYPE_4__* %19, i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** @grps, align 8
  br label %25

25:                                               ; preds = %15, %5
  %26 = call %struct.group* (...) @getgrent()
  store %struct.group* %26, %struct.group** %1, align 8
  %27 = icmp eq %struct.group* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %140

29:                                               ; preds = %25
  %30 = load %struct.group*, %struct.group** %1, align 8
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @xstrdup(i8* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %35 = load i32, i32* @ngrps, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i8* %33, i8** %38, align 8
  %39 = load %struct.group*, %struct.group** %1, align 8
  %40 = getelementptr inbounds %struct.group, %struct.group* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @xstrdup(i8* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %44 = load i32, i32* @ngrps, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i8* %42, i8** %47, align 8
  %48 = load %struct.group*, %struct.group** %1, align 8
  %49 = getelementptr inbounds %struct.group, %struct.group* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %52 = load i32, i32* @ngrps, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %50, i32* %55, align 8
  %56 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %58 = load i32, i32* @ngrps, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  store i32 0, i32* %3, align 4
  store i64 1, i64* %2, align 8
  br label %62

62:                                               ; preds = %83, %29
  %63 = load %struct.group*, %struct.group** %1, align 8
  %64 = getelementptr inbounds %struct.group, %struct.group* %63, i32 0, i32 2
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %62
  %72 = load %struct.group*, %struct.group** %1, align 8
  %73 = getelementptr inbounds %struct.group, %struct.group* %72, i32 0, i32 2
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @strlen(i32* %78)
  %80 = add nsw i64 %79, 1
  %81 = load i64, i64* %2, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %62

86:                                               ; preds = %62
  %87 = load i64, i64* %2, align 8
  %88 = call i8* @xmalloc(i64 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %90 = load i32, i32* @ngrps, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i8* %88, i8** %93, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %2, align 8
  br label %94

94:                                               ; preds = %126, %86
  %95 = load %struct.group*, %struct.group** %1, align 8
  %96 = getelementptr inbounds %struct.group, %struct.group* %95, i32 0, i32 2
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %129

103:                                              ; preds = %94
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %105 = load i32, i32* @ngrps, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* %2, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %116 = load %struct.group*, %struct.group** %1, align 8
  %117 = getelementptr inbounds %struct.group, %struct.group* %116, i32 0, i32 2
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @sprintf(i8* %111, i8* %115, i32* %122)
  %124 = load i64, i64* %2, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %2, align 8
  br label %126

126:                                              ; preds = %103
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %94

129:                                              ; preds = %94
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @grps, align 8
  %131 = load i32, i32* @ngrps, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* %2, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i32, i32* @ngrps, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @ngrps, align 4
  br label %5

140:                                              ; preds = %28
  %141 = call i32 (...) @endgrent()
  ret void
}

declare dso_local i32 @setgrent(...) #1

declare dso_local %struct.TYPE_4__* @xrealloc(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.group* @getgrent(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @sprintf(i8*, i8*, i32*) #1

declare dso_local i32 @endgrent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
