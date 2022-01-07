; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iplist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8*, i64, %struct.in_addr }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c",-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iplist*, i8*)* @iplist_setrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iplist_setrange(%struct.iplist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iplist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_addr, align 4
  store %struct.iplist* %0, %struct.iplist** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strpbrk(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.iplist*, %struct.iplist** %4, align 8
  %15 = getelementptr inbounds %struct.iplist, %struct.iplist* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = call i32 @inet_aton(i8* %13, %struct.in_addr* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %125

20:                                               ; preds = %12
  %21 = load %struct.iplist*, %struct.iplist** %4, align 8
  %22 = getelementptr inbounds %struct.iplist, %struct.iplist* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @ntohl(i32 %25)
  %27 = load %struct.iplist*, %struct.iplist** %4, align 8
  %28 = getelementptr inbounds %struct.iplist, %struct.iplist* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.iplist*, %struct.iplist** %4, align 8
  %31 = getelementptr inbounds %struct.iplist, %struct.iplist* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  br label %117

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.iplist*, %struct.iplist** %4, align 8
  %37 = getelementptr inbounds %struct.iplist, %struct.iplist* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = call i32 @do_inet_aton(i8* %34, i8* %35, %struct.in_addr* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %125

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 44
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.iplist*, %struct.iplist** %4, align 8
  %49 = getelementptr inbounds %struct.iplist, %struct.iplist* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ntohl(i32 %52)
  %54 = load %struct.iplist*, %struct.iplist** %4, align 8
  %55 = getelementptr inbounds %struct.iplist, %struct.iplist* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.iplist*, %struct.iplist** %4, align 8
  %58 = getelementptr inbounds %struct.iplist, %struct.iplist* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  br label %116

60:                                               ; preds = %42
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @strpbrk(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %64, i8** %6, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 45
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %125

78:                                               ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @do_inet_aton(i8* %79, i8* %80, %struct.in_addr* %8)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %125

84:                                               ; preds = %78
  %85 = load %struct.iplist*, %struct.iplist** %4, align 8
  %86 = getelementptr inbounds %struct.iplist, %struct.iplist* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @ntohl(i32 %89)
  %91 = load %struct.iplist*, %struct.iplist** %4, align 8
  %92 = getelementptr inbounds %struct.iplist, %struct.iplist* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @ntohl(i32 %95)
  %97 = load %struct.iplist*, %struct.iplist** %4, align 8
  %98 = getelementptr inbounds %struct.iplist, %struct.iplist* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %96 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = add nsw i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = load %struct.iplist*, %struct.iplist** %4, align 8
  %107 = getelementptr inbounds %struct.iplist, %struct.iplist* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 8
  %109 = load %struct.iplist*, %struct.iplist** %4, align 8
  %110 = getelementptr inbounds %struct.iplist, %struct.iplist* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %125

115:                                              ; preds = %84
  br label %116

116:                                              ; preds = %115, %47
  br label %117

117:                                              ; preds = %116, %20
  %118 = load %struct.iplist*, %struct.iplist** %4, align 8
  %119 = getelementptr inbounds %struct.iplist, %struct.iplist* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load %struct.iplist*, %struct.iplist** %4, align 8
  %123 = getelementptr inbounds %struct.iplist, %struct.iplist* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  store i8* %121, i8** %124, align 8
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %114, %83, %77, %41, %19
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @do_inet_aton(i8*, i8*, %struct.in_addr*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
