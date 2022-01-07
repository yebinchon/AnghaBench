; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_notify_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_notify_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@status_info = common dso_local global %struct.TYPE_4__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to fork notify process - %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_hosts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = load i8*, i8** @FALSE, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %1, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_info, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  br label %14

14:                                               ; preds = %25, %0
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %1, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %4, align 8
  br label %14

30:                                               ; preds = %22, %14
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %115

34:                                               ; preds = %30
  %35 = call i32 (...) @fork()
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @syslog(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %115

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %115

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %110, %47
  %49 = load i32, i32* %2, align 4
  %50 = icmp slt i32 %49, 44
  br i1 %50, label %51, label %113

51:                                               ; preds = %48
  %52 = load i8*, i8** @FALSE, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %3, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_info, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %1, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_info, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %4, align 8
  br label %60

60:                                               ; preds = %87, %51
  %61 = load i32, i32* %1, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @notify_one_host(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i8*, i8** @FALSE, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = call i32 (...) @sync_file()
  br label %85

83:                                               ; preds = %68
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %77
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %1, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 1
  store %struct.TYPE_3__* %91, %struct.TYPE_3__** %4, align 8
  br label %60

92:                                               ; preds = %60
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %113

96:                                               ; preds = %92
  %97 = load i32, i32* %2, align 4
  %98 = icmp slt i32 %97, 10
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @sleep(i32 5)
  br label %109

101:                                              ; preds = %96
  %102 = load i32, i32* %2, align 4
  %103 = icmp slt i32 %102, 20
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @sleep(i32 60)
  br label %108

106:                                              ; preds = %101
  %107 = call i32 @sleep(i32 3600)
  br label %108

108:                                              ; preds = %106, %104
  br label %109

109:                                              ; preds = %108, %99
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  br label %48

113:                                              ; preds = %95, %48
  %114 = call i32 @exit(i32 0) #3
  unreachable

115:                                              ; preds = %46, %38, %33
  ret void
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @notify_one_host(i32, i32) #1

declare dso_local i32 @sync_file(...) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
