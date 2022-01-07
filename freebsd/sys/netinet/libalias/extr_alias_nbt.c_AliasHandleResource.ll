; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleResource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleResource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, %struct.TYPE_8__*, i8*, i32*)* @AliasHandleResource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AliasHandleResource(i64 %0, %struct.TYPE_8__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %9

9:                                                ; preds = %63, %4
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = bitcast %struct.TYPE_8__* %13 to i32*
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @AliasHandleName(i32* %14, i8* %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 1
  %23 = bitcast %struct.TYPE_8__* %22 to i8*
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ugt i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %12
  br label %66

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  switch i32 %31, label %62 [
    i32 131, label %32
    i32 132, label %38
    i32 129, label %44
    i32 128, label %50
    i32 130, label %56
  ]

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @AliasHandleResourceNB(%struct.TYPE_8__* %33, i8* %34, i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %6, align 8
  br label %63

38:                                               ; preds = %27
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @AliasHandleResourceA(%struct.TYPE_8__* %39, i8* %40, i32* %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %6, align 8
  br label %63

44:                                               ; preds = %27
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @AliasHandleResourceNS(%struct.TYPE_8__* %45, i8* %46, i32* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %6, align 8
  br label %63

50:                                               ; preds = %27
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @AliasHandleResourceNULL(%struct.TYPE_8__* %51, i8* %52, i32* %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %6, align 8
  br label %63

56:                                               ; preds = %27
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @AliasHandleResourceNBSTAT(%struct.TYPE_8__* %57, i8* %58, i32* %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %6, align 8
  br label %63

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %56, %50, %44, %38, %32
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %5, align 8
  br label %9

66:                                               ; preds = %26, %9
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = bitcast %struct.TYPE_8__* %67 to i32*
  ret i32* %68
}

declare dso_local i64 @AliasHandleName(i32*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @AliasHandleResourceNB(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @AliasHandleResourceA(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @AliasHandleResourceNS(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @AliasHandleResourceNULL(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @AliasHandleResourceNBSTAT(%struct.TYPE_8__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
