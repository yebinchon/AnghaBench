; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_enter_lastlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_enter_lastlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32, %struct.TYPE_8__* }
%struct.utmpx = type { i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@UTXDB_LASTLOGIN = common dso_local global i32 0, align 4
@USER_PROCESS = common dso_local global i64 0, align 8
@LOGGEDIN = common dso_local global i64 0, align 8
@LASTLOG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enter_lastlog(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.utmpx*, align 8
  %5 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.utmpx* null, %struct.utmpx** %4, align 8
  store i8 0, i8* %5, align 1
  %6 = load i32, i32* @UTXDB_LASTLOGIN, align 4
  %7 = call i64 @setutxdb(i32 %6, i32* null)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.utmpx* @getutxuser(i32 %12)
  store %struct.utmpx* %13, %struct.utmpx** %4, align 8
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %3, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8 1, i8* %5, align 1
  br label %95

20:                                               ; preds = %14
  %21 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %22 = icmp ne %struct.utmpx* %21, null
  br i1 %22, label %23, label %94

23:                                               ; preds = %20
  %24 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %25 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USER_PROCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i8, i8* %5, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %59

38:                                               ; preds = %36
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LOGGEDIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %49 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i8 1, i8* %5, align 1
  br label %54

54:                                               ; preds = %53, %44, %38
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %3, align 8
  br label %30

59:                                               ; preds = %36
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %3, align 8
  br label %63

63:                                               ; preds = %89, %59
  %64 = load i8, i8* %5, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i1 [ false, %63 ], [ %69, %67 ]
  br i1 %71, label %72, label %93

72:                                               ; preds = %70
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LOGGEDIN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %83 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @strcmp(i32 %81, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i8 0, i8* %5, align 1
  br label %88

88:                                               ; preds = %87, %78, %72
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %3, align 8
  br label %63

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %23, %20
  br label %95

95:                                               ; preds = %94, %19
  %96 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %97 = icmp ne %struct.utmpx* %96, null
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load i8, i8* %5, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = call %struct.TYPE_8__* @walloc(%struct.TYPE_9__* %103)
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %3, align 8
  %105 = load i64, i64* @LASTLOG, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %112 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strcpy(i32 %110, i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %119 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @strcpy(i32 %117, i32 %120)
  %122 = load %struct.utmpx*, %struct.utmpx** %4, align 8
  %123 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %102, %98, %95
  %129 = call i32 (...) @endutxent()
  ret void
}

declare dso_local i64 @setutxdb(i32, i32*) #1

declare dso_local %struct.utmpx* @getutxuser(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_8__* @walloc(%struct.TYPE_9__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
