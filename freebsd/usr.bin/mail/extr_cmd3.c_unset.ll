; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var = type { i32, i32, %struct.var* }

@sourcing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\22%s\22: undefined variable\0A\00", align 1
@variables = common dso_local global %struct.var** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.var*, align 8
  %5 = alloca %struct.var*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load i8**, i8*** %3, align 8
  store i8** %11, i8*** %8, align 8
  br label %12

12:                                               ; preds = %107, %1
  %13 = load i8**, i8*** %8, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %110

16:                                               ; preds = %12
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.var* @lookup(i8* %18)
  store %struct.var* %19, %struct.var** %5, align 8
  %20 = icmp eq %struct.var* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @getenv(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8**, i8*** %8, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @unsetenv(i8* %28)
  br label %40

30:                                               ; preds = %21
  %31 = load i32, i32* @sourcing, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39, %26
  br label %107

41:                                               ; preds = %16
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @hash(i8* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.var*, %struct.var** %5, align 8
  %46 = load %struct.var**, %struct.var*** @variables, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.var*, %struct.var** %46, i64 %48
  %50 = load %struct.var*, %struct.var** %49, align 8
  %51 = icmp eq %struct.var* %45, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %41
  %53 = load %struct.var**, %struct.var*** @variables, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.var*, %struct.var** %53, i64 %55
  %57 = load %struct.var*, %struct.var** %56, align 8
  %58 = getelementptr inbounds %struct.var, %struct.var* %57, i32 0, i32 2
  %59 = load %struct.var*, %struct.var** %58, align 8
  %60 = load %struct.var**, %struct.var*** @variables, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.var*, %struct.var** %60, i64 %62
  store %struct.var* %59, %struct.var** %63, align 8
  %64 = load %struct.var*, %struct.var** %5, align 8
  %65 = getelementptr inbounds %struct.var, %struct.var* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vfree(i32 %66)
  %68 = load %struct.var*, %struct.var** %5, align 8
  %69 = getelementptr inbounds %struct.var, %struct.var* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @vfree(i32 %70)
  %72 = load %struct.var*, %struct.var** %5, align 8
  %73 = call i32 @free(%struct.var* %72)
  br label %107

74:                                               ; preds = %41
  %75 = load %struct.var**, %struct.var*** @variables, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.var*, %struct.var** %75, i64 %77
  %79 = load %struct.var*, %struct.var** %78, align 8
  store %struct.var* %79, %struct.var** %4, align 8
  br label %80

80:                                               ; preds = %87, %74
  %81 = load %struct.var*, %struct.var** %4, align 8
  %82 = getelementptr inbounds %struct.var, %struct.var* %81, i32 0, i32 2
  %83 = load %struct.var*, %struct.var** %82, align 8
  %84 = load %struct.var*, %struct.var** %5, align 8
  %85 = icmp ne %struct.var* %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.var*, %struct.var** %4, align 8
  %89 = getelementptr inbounds %struct.var, %struct.var* %88, i32 0, i32 2
  %90 = load %struct.var*, %struct.var** %89, align 8
  store %struct.var* %90, %struct.var** %4, align 8
  br label %80

91:                                               ; preds = %80
  %92 = load %struct.var*, %struct.var** %5, align 8
  %93 = getelementptr inbounds %struct.var, %struct.var* %92, i32 0, i32 2
  %94 = load %struct.var*, %struct.var** %93, align 8
  %95 = load %struct.var*, %struct.var** %4, align 8
  %96 = getelementptr inbounds %struct.var, %struct.var* %95, i32 0, i32 2
  store %struct.var* %94, %struct.var** %96, align 8
  %97 = load %struct.var*, %struct.var** %5, align 8
  %98 = getelementptr inbounds %struct.var, %struct.var* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @vfree(i32 %99)
  %101 = load %struct.var*, %struct.var** %5, align 8
  %102 = getelementptr inbounds %struct.var, %struct.var* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @vfree(i32 %103)
  %105 = load %struct.var*, %struct.var** %5, align 8
  %106 = call i32 @free(%struct.var* %105)
  br label %107

107:                                              ; preds = %91, %52, %40
  %108 = load i8**, i8*** %8, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %109, i8*** %8, align 8
  br label %12

110:                                              ; preds = %12
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.var* @lookup(i8*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @hash(i8*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @free(%struct.var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
