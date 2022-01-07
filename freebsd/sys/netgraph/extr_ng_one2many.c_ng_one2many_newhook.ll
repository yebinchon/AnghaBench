; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_one2many.c_ng_one2many_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_one2many.c_ng_one2many_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.ng_one2many_link, %struct.ng_one2many_link* }
%struct.TYPE_5__ = type { i32* }
%struct.ng_one2many_link = type { i32, i32* }

@NG_ONE2MANY_HOOK_MANY_PREFIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_ONE2MANY_MAX_LINKS = common dso_local global i64 0, align 8
@NG_ONE2MANY_HOOK_ONE = common dso_local global i32 0, align 4
@NG_ONE2MANY_ONE_LINKNUM = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_one2many_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_one2many_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.ng_one2many_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_6__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @NG_ONE2MANY_HOOK_MANY_PREFIX, align 4
  %18 = load i32, i32* @NG_ONE2MANY_HOOK_MANY_PREFIX, align 4
  %19 = call i32 @strlen(i32 %18)
  %20 = call i64 @strncmp(i8* %16, i32 %17, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @NG_ONE2MANY_HOOK_MANY_PREFIX, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @isdigit(i8 signext %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 48
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %22
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %113

46:                                               ; preds = %38, %32
  %47 = load i8*, i8** %12, align 8
  %48 = call i64 @strtoul(i8* %47, i8** %13, i32 10)
  store i64 %48, i64* %11, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @NG_ONE2MANY_MAX_LINKS, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %46
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %4, align 4
  br label %113

59:                                               ; preds = %53
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.ng_one2many_link*, %struct.ng_one2many_link** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ng_one2many_link, %struct.ng_one2many_link* %64, i64 %66
  store %struct.ng_one2many_link* %67, %struct.ng_one2many_link** %9, align 8
  br label %80

68:                                               ; preds = %3
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @NG_ONE2MANY_HOOK_ONE, align 4
  %71 = call i64 @strcmp(i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @NG_ONE2MANY_ONE_LINKNUM, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store %struct.ng_one2many_link* %76, %struct.ng_one2many_link** %9, align 8
  br label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %4, align 4
  br label %113

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.ng_one2many_link*, %struct.ng_one2many_link** %9, align 8
  %82 = getelementptr inbounds %struct.ng_one2many_link, %struct.ng_one2many_link* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @EISCONN, align 4
  store i32 %86, i32* %4, align 4
  br label %113

87:                                               ; preds = %80
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @NG_HOOK_SET_PRIVATE(i32* %88, i8* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.ng_one2many_link*, %struct.ng_one2many_link** %9, align 8
  %95 = getelementptr inbounds %struct.ng_one2many_link, %struct.ng_one2many_link* %94, i32 0, i32 1
  store i32* %93, i32** %95, align 8
  %96 = load %struct.ng_one2many_link*, %struct.ng_one2many_link** %9, align 8
  %97 = getelementptr inbounds %struct.ng_one2many_link, %struct.ng_one2many_link* %96, i32 0, i32 0
  %98 = call i32 @bzero(i32* %97, i32 4)
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @NG_ONE2MANY_ONE_LINKNUM, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %87
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = call i32 @ng_one2many_update_many(%struct.TYPE_6__* %110)
  br label %112

112:                                              ; preds = %102, %87
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %85, %77, %57, %44
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_6__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32*, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @ng_one2many_update_many(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
