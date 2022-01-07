; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_display_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_display_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgroup = type { i8*, i64, i32 }
%struct.xpasswd = type { i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.tm = type { i32 }

@o_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s:%ld:%s:%ld:%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%-15s %-7ld %-15s %-7ld %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@m_flag = common dso_local global i64 0, align 8
@grps = common dso_local global %struct.xgroup* null, align 8
@ngrps = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s:%s:%ld\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%24s%-15s %-7ld\0A\00", align 1
@x_flag = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%24s%s\0A\00", align 1
@a_flag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"%F\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%24s%s %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpasswd*)* @display_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_user(%struct.xpasswd* %0) #0 {
  %2 = alloca %struct.xpasswd*, align 8
  %3 = alloca %struct.xgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca %struct.tm*, align 8
  store %struct.xpasswd* %0, %struct.xpasswd** %2, align 8
  %8 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %9 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.xgroup* @find_group_bygid(i64 %10)
  store %struct.xgroup* %11, %struct.xgroup** %3, align 8
  %12 = load i64, i64* @o_flag, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)
  %16 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %17 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %20 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %23 = icmp ne %struct.xgroup* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %26 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i8* [ %27, %24 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %28 ]
  %31 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %32 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %35 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* %15, i32 %18, i64 %21, i8* %30, i64 %33, i32 %36)
  %38 = load i64, i64* @m_flag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  %41 = load %struct.xgroup*, %struct.xgroup** @grps, align 8
  store %struct.xgroup* %41, %struct.xgroup** %3, align 8
  br label %42

42:                                               ; preds = %76, %40
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ngrps, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %48 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %51 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %46
  %55 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %56 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %59 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @member(i32 %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54, %46
  br label %76

64:                                               ; preds = %54
  %65 = load i64, i64* @o_flag, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)
  %69 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %70 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %73 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %71, i64 %74)
  br label %76

76:                                               ; preds = %64, %63
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %4, align 4
  %79 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %80 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %79, i32 1
  store %struct.xgroup* %80, %struct.xgroup** %3, align 8
  br label %42

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81, %29
  %83 = load i64, i64* @x_flag, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i64, i64* @o_flag, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %90 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %91 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @printf(i8* %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i64, i64* @o_flag, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %98 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %99 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %85, %82
  %103 = load i64, i64* @a_flag, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %102
  %106 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %107 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %106, i32 0, i32 2
  %108 = call %struct.tm* @gmtime(i64* %107)
  store %struct.tm* %108, %struct.tm** %7, align 8
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %110 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %111 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %116 = load %struct.tm*, %struct.tm** %7, align 8
  %117 = call i32 @strftime(i8* %109, i32 16, i8* %115, %struct.tm* %116)
  %118 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %119 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %118, i32 0, i32 1
  %120 = call %struct.tm* @gmtime(i64* %119)
  store %struct.tm* %120, %struct.tm** %7, align 8
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %122 = load %struct.xpasswd*, %struct.xpasswd** %2, align 8
  %123 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %128 = load %struct.tm*, %struct.tm** %7, align 8
  %129 = call i32 @strftime(i8* %121, i32 16, i8* %127, %struct.tm* %128)
  %130 = load i64, i64* @o_flag, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %135 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %136 = call i32 (i8*, ...) @printf(i8* %133, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %134, i8* %135)
  br label %137

137:                                              ; preds = %105, %102
  %138 = load i64, i64* @o_flag, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %137
  ret void
}

declare dso_local %struct.xgroup* @find_group_bygid(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @member(i32, i32) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
