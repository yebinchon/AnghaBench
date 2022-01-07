; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_fprintlog_rfc5424.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_fprintlog_rfc5424.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filed = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iovlist = type { i32 }

@F_WALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"\0D\0A\07Message from syslogd ...\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c">1 \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%FT%T.______%z\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filed*, i8*, i8*, i8*, i8*, i8*, i8*, i32)* @fprintlog_rfc5424 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprintlog_rfc5424(%struct.filed* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.filed*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.iovlist, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [33 x i8], align 16
  %21 = alloca [5 x i8], align 1
  store %struct.filed* %0, %struct.filed** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = call i32 @iovlist_init(%struct.iovlist* %17)
  %23 = load %struct.filed*, %struct.filed** %9, align 8
  %24 = getelementptr inbounds %struct.filed, %struct.filed* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @F_WALL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %8
  %31 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %21, i64 0, i64 0
  %33 = load %struct.filed*, %struct.filed** %9, align 8
  %34 = getelementptr inbounds %struct.filed, %struct.filed* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @snprintf(i8* %32, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %21, i64 0, i64 0
  %38 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %37)
  %39 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 0
  %41 = load %struct.filed*, %struct.filed** %9, align 8
  %42 = getelementptr inbounds %struct.filed, %struct.filed* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @strftime(i8* %40, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %43)
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 31
  br i1 %46, label %47, label %79

47:                                               ; preds = %30
  %48 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 32
  store i8 0, i8* %48, align 16
  %49 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 30
  %50 = load i8, i8* %49, align 2
  %51 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 31
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 29
  %53 = load i8, i8* %52, align 1
  %54 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 30
  store i8 %53, i8* %54, align 2
  %55 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 29
  store i8 58, i8* %55, align 1
  %56 = load %struct.filed*, %struct.filed** %9, align 8
  %57 = getelementptr inbounds %struct.filed, %struct.filed* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  store i32 25, i32* %19, align 4
  br label %60

60:                                               ; preds = %73, %47
  %61 = load i32, i32* %19, align 4
  %62 = icmp sge i32 %61, 20
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* %18, align 4
  %65 = srem i32 %64, 10
  %66 = add nsw i32 %65, 48
  %67 = trunc i32 %66 to i8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 %69
  store i8 %67, i8* %70, align 1
  %71 = load i32, i32* %18, align 4
  %72 = sdiv i32 %71, 10
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %19, align 4
  br label %60

76:                                               ; preds = %60
  %77 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 0
  %78 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %77)
  br label %81

79:                                               ; preds = %30
  %80 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %83)
  %85 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i8*, i8** %11, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %91

89:                                               ; preds = %81
  %90 = load i8*, i8** %11, align 8
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %88 ], [ %90, %89 ]
  %93 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %92)
  %94 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i8*, i8** %12, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %100

98:                                               ; preds = %91
  %99 = load i8*, i8** %12, align 8
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %97 ], [ %99, %98 ]
  %102 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %101)
  %103 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i8*, i8** %13, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %109

107:                                              ; preds = %100
  %108 = load i8*, i8** %13, align 8
  br label %109

109:                                              ; preds = %107, %106
  %110 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %106 ], [ %108, %107 ]
  %111 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %110)
  %112 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i8*, i8** %14, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %118

116:                                              ; preds = %109
  %117 = load i8*, i8** %14, align 8
  br label %118

118:                                              ; preds = %116, %115
  %119 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %115 ], [ %117, %116 ]
  %120 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %119)
  %121 = call i32 @iovlist_append(%struct.iovlist* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @iovlist_append(%struct.iovlist* %17, i8* %122)
  %124 = load %struct.filed*, %struct.filed** %9, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @fprintlog_write(%struct.filed* %124, %struct.iovlist* %17, i32 %125)
  ret void
}

declare dso_local i32 @iovlist_init(%struct.iovlist*) #1

declare dso_local i32 @iovlist_append(%struct.iovlist*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32*) #1

declare dso_local i32 @fprintlog_write(%struct.filed*, %struct.iovlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
