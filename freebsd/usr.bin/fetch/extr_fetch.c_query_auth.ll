; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_query_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_query_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i8*, i8*, i32, i8*, i8* }
%struct.termios = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Authentication required for <%s://%s:%d/>!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Login: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@TCSASOFT = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.url*)* @query_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_auth(%struct.url* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.url*, align 8
  %4 = alloca %struct.termios, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.url* %0, %struct.url** %3, align 8
  %8 = load i32, i32* @stderr, align 4
  %9 = load %struct.url*, %struct.url** %3, align 8
  %10 = getelementptr inbounds %struct.url, %struct.url* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.url*, %struct.url** %3, align 8
  %13 = getelementptr inbounds %struct.url, %struct.url* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.url*, %struct.url** %3, align 8
  %16 = getelementptr inbounds %struct.url, %struct.url* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %14, i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.url*, %struct.url** %3, align 8
  %22 = getelementptr inbounds %struct.url, %struct.url* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @stdin, align 4
  %25 = call i32* @fgets(i8* %23, i32 8, i32 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %158

28:                                               ; preds = %1
  %29 = load %struct.url*, %struct.url** %3, align 8
  %30 = getelementptr inbounds %struct.url, %struct.url* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %64, %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load %struct.url*, %struct.url** %3, align 8
  %38 = getelementptr inbounds %struct.url, %struct.url* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.url*, %struct.url** %3, align 8
  %48 = getelementptr inbounds %struct.url, %struct.url* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %63

56:                                               ; preds = %46, %36
  %57 = load %struct.url*, %struct.url** %3, align 8
  %58 = getelementptr inbounds %struct.url, %struct.url* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %56, %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  br label %33

67:                                               ; preds = %33
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @STDIN_FILENO, align 4
  %71 = call i64 @tcgetattr(i32 %70, %struct.termios* %4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @ECHO, align 4
  %77 = xor i32 %76, -1
  %78 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @ECHONL, align 4
  %82 = load i32, i32* @ICANON, align 4
  %83 = or i32 %81, %82
  %84 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @STDIN_FILENO, align 4
  %88 = load i32, i32* @TCSAFLUSH, align 4
  %89 = load i32, i32* @TCSASOFT, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @tcsetattr(i32 %87, i32 %90, %struct.termios* %4)
  %92 = load %struct.url*, %struct.url** %3, align 8
  %93 = getelementptr inbounds %struct.url, %struct.url* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @stdin, align 4
  %96 = call i32* @fgets(i8* %94, i32 8, i32 %95)
  %97 = icmp eq i32* %96, null
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %5, align 4
  %100 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @STDIN_FILENO, align 4
  %102 = load i32, i32* @TCSANOW, align 4
  %103 = load i32, i32* @TCSASOFT, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @tcsetattr(i32 %101, i32 %104, %struct.termios* %4)
  br label %114

106:                                              ; preds = %67
  %107 = load %struct.url*, %struct.url** %3, align 8
  %108 = getelementptr inbounds %struct.url, %struct.url* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @stdin, align 4
  %111 = call i32* @fgets(i8* %109, i32 8, i32 %110)
  %112 = icmp eq i32* %111, null
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %106, %73
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %158

118:                                              ; preds = %114
  %119 = load %struct.url*, %struct.url** %3, align 8
  %120 = getelementptr inbounds %struct.url, %struct.url* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strlen(i8* %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %154, %118
  %124 = load i32, i32* %6, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %123
  %127 = load %struct.url*, %struct.url** %3, align 8
  %128 = getelementptr inbounds %struct.url, %struct.url* %127, i32 0, i32 4
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 13
  br i1 %135, label %146, label %136

136:                                              ; preds = %126
  %137 = load %struct.url*, %struct.url** %3, align 8
  %138 = getelementptr inbounds %struct.url, %struct.url* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 10
  br i1 %145, label %146, label %153

146:                                              ; preds = %136, %126
  %147 = load %struct.url*, %struct.url** %3, align 8
  %148 = getelementptr inbounds %struct.url, %struct.url* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 0, i8* %152, align 1
  br label %153

153:                                              ; preds = %146, %136
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %6, align 4
  br label %123

157:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %117, %27
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
