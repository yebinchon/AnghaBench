; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_get_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_get_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct.passwd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@npwds = common dso_local global i32 0, align 4
@pwdsz = common dso_local global i32 0, align 4
@pwds = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_users to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_users() #0 {
  %1 = alloca %struct.passwd*, align 8
  %2 = call i32 (...) @setpwent()
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* @npwds, align 4
  %5 = load i32, i32* @pwdsz, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load i32, i32* @pwdsz, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @pwdsz, align 4
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 128, %12 ]
  %15 = load i32, i32* @pwdsz, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* @pwdsz, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %18 = load i32, i32* @pwdsz, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 80
  %21 = trunc i64 %20 to i32
  %22 = call %struct.TYPE_4__* @xrealloc(%struct.TYPE_4__* %17, i32 %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** @pwds, align 8
  br label %23

23:                                               ; preds = %13, %3
  %24 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %24, %struct.passwd** %1, align 8
  %25 = icmp eq %struct.passwd* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %121

27:                                               ; preds = %23
  %28 = load %struct.passwd*, %struct.passwd** %1, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @xstrdup(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %33 = load i32, i32* @npwds, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 10
  store i8* %31, i8** %36, align 8
  %37 = load %struct.passwd*, %struct.passwd** %1, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @xstrdup(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %42 = load i32, i32* @npwds, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 9
  store i8* %40, i8** %45, align 8
  %46 = load %struct.passwd*, %struct.passwd** %1, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %50 = load i32, i32* @npwds, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 8
  store i32 %48, i32* %53, align 8
  %54 = load %struct.passwd*, %struct.passwd** %1, align 8
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %58 = load i32, i32* @npwds, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 7
  store i32 %56, i32* %61, align 4
  %62 = load %struct.passwd*, %struct.passwd** %1, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %66 = load i32, i32* @npwds, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  store i32 %64, i32* %69, align 8
  %70 = load %struct.passwd*, %struct.passwd** %1, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @xstrdup(i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %75 = load i32, i32* @npwds, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i8* %73, i8** %78, align 8
  %79 = load %struct.passwd*, %struct.passwd** %1, align 8
  %80 = getelementptr inbounds %struct.passwd, %struct.passwd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @xstrdup(i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %84 = load i32, i32* @npwds, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  store i8* %82, i8** %87, align 8
  %88 = load %struct.passwd*, %struct.passwd** %1, align 8
  %89 = getelementptr inbounds %struct.passwd, %struct.passwd* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @xstrdup(i32 %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %93 = load i32, i32* @npwds, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i8* %91, i8** %96, align 8
  %97 = load %struct.passwd*, %struct.passwd** %1, align 8
  %98 = getelementptr inbounds %struct.passwd, %struct.passwd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @xstrdup(i32 %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %102 = load i32, i32* @npwds, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i8* %100, i8** %105, align 8
  %106 = load %struct.passwd*, %struct.passwd** %1, align 8
  %107 = getelementptr inbounds %struct.passwd, %struct.passwd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %110 = load i32, i32* @npwds, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwds, align 8
  %115 = load i32, i32* @npwds, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @npwds, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @npwds, align 4
  br label %3

121:                                              ; preds = %26
  %122 = call i32 (...) @endpwent()
  ret void
}

declare dso_local i32 @setpwent(...) #1

declare dso_local %struct.TYPE_4__* @xrealloc(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
