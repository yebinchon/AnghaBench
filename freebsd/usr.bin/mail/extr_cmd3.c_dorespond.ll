; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_dorespond.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_dorespond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.name = type { i32 }
%struct.header = type { i8*, i32, i32*, i32*, %struct.name*, i32*, %struct.name* }

@.str = private unnamed_addr constant [49 x i8] c"Sorry, can't reply to multiple messages at once\0A\00", align 1
@message = common dso_local global %struct.message* null, align 8
@dot = common dso_local global %struct.message* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"reply-to\00", align 1
@GTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@myname = common dso_local global i8* null, align 8
@altnames = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Empty reply-to field -- replying to author\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"subj\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@GCC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"REPLYTO\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"message-id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dorespond(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.name*, align 8
  %10 = alloca %struct.header, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %169

17:                                               ; preds = %1
  %18 = load %struct.message*, %struct.message** @message, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.message, %struct.message* %18, i64 %23
  store %struct.message* %24, %struct.message** %4, align 8
  %25 = load %struct.message*, %struct.message** %4, align 8
  %26 = call i32 @touch(%struct.message* %25)
  %27 = load %struct.message*, %struct.message** %4, align 8
  store %struct.message* %27, %struct.message** @dot, align 8
  %28 = load %struct.message*, %struct.message** %4, align 8
  %29 = call i8* @hfield(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.message* %28)
  %30 = call i8* @skin(i8* %29)
  store i8* %30, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load %struct.message*, %struct.message** %4, align 8
  %34 = call i8* @nameof(%struct.message* %33, i32 1)
  %35 = call i8* @skin(i8* %34)
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %32, %17
  %37 = load %struct.message*, %struct.message** %4, align 8
  %38 = call i8* @hfield(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.message* %37)
  %39 = call i8* @skin(i8* %38)
  store i8* %39, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @GTO, align 4
  %44 = call %struct.name* @extract(i8* %42, i32 %43)
  store %struct.name* %44, %struct.name** %9, align 8
  br label %56

45:                                               ; preds = %36
  %46 = load %struct.message*, %struct.message** %4, align 8
  %47 = call i8* @hfield(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.message* %46)
  %48 = call i8* @skin(i8* %47)
  store i8* %48, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @GTO, align 4
  %53 = call %struct.name* @extract(i8* %51, i32 %52)
  store %struct.name* %53, %struct.name** %9, align 8
  br label %55

54:                                               ; preds = %45
  store %struct.name* null, %struct.name** %9, align 8
  br label %55

55:                                               ; preds = %54, %50
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.name*, %struct.name** %9, align 8
  %58 = call %struct.name* @elide(%struct.name* %57)
  store %struct.name* %58, %struct.name** %9, align 8
  %59 = load %struct.name*, %struct.name** %9, align 8
  %60 = load i8*, i8** @myname, align 8
  %61 = call %struct.name* @delname(%struct.name* %59, i8* %60)
  store %struct.name* %61, %struct.name** %9, align 8
  %62 = load i8**, i8*** @altnames, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %56
  %65 = load i8**, i8*** @altnames, align 8
  store i8** %65, i8*** %8, align 8
  br label %66

66:                                               ; preds = %75, %64
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.name*, %struct.name** %9, align 8
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call %struct.name* @delname(%struct.name* %71, i8* %73)
  store %struct.name* %74, %struct.name** %9, align 8
  br label %75

75:                                               ; preds = %70
  %76 = load i8**, i8*** %8, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %8, align 8
  br label %66

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.name*, %struct.name** %9, align 8
  %81 = icmp ne %struct.name* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.name*, %struct.name** %9, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* @GTO, align 4
  %89 = call %struct.name* @extract(i8* %87, i32 %88)
  %90 = call %struct.name* @cat(%struct.name* %86, %struct.name* %89)
  store %struct.name* %90, %struct.name** %9, align 8
  br label %104

91:                                               ; preds = %82, %79
  %92 = load %struct.name*, %struct.name** %9, align 8
  %93 = icmp eq %struct.name* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @GTO, align 4
  %102 = call %struct.name* @extract(i8* %100, i32 %101)
  store %struct.name* %102, %struct.name** %9, align 8
  br label %103

103:                                              ; preds = %99, %91
  br label %104

104:                                              ; preds = %103, %85
  %105 = load %struct.name*, %struct.name** %9, align 8
  %106 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 6
  store %struct.name* %105, %struct.name** %106, align 8
  %107 = load %struct.message*, %struct.message** %4, align 8
  %108 = call i8* @hfield(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.message* %107)
  %109 = bitcast i8* %108 to i32*
  %110 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 5
  store i32* %109, i32** %110, align 8
  %111 = icmp eq i32* %109, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load %struct.message*, %struct.message** %4, align 8
  %114 = call i8* @hfield(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.message* %113)
  %115 = bitcast i8* %114 to i32*
  %116 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 5
  store i32* %115, i32** %116, align 8
  br label %117

117:                                              ; preds = %112, %104
  %118 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = call i32* @reedit(i32* %119)
  %121 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 5
  store i32* %120, i32** %121, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %157

124:                                              ; preds = %117
  %125 = load %struct.message*, %struct.message** %4, align 8
  %126 = call i8* @hfield(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.message* %125)
  %127 = call i8* @skin(i8* %126)
  store i8* %127, i8** %5, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %157

129:                                              ; preds = %124
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* @GCC, align 4
  %132 = call %struct.name* @extract(i8* %130, i32 %131)
  %133 = call %struct.name* @elide(%struct.name* %132)
  store %struct.name* %133, %struct.name** %9, align 8
  %134 = load %struct.name*, %struct.name** %9, align 8
  %135 = load i8*, i8** @myname, align 8
  %136 = call %struct.name* @delname(%struct.name* %134, i8* %135)
  store %struct.name* %136, %struct.name** %9, align 8
  %137 = load i8**, i8*** @altnames, align 8
  %138 = icmp ne i8** %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %129
  %140 = load i8**, i8*** @altnames, align 8
  store i8** %140, i8*** %8, align 8
  br label %141

141:                                              ; preds = %150, %139
  %142 = load i8**, i8*** %8, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load %struct.name*, %struct.name** %9, align 8
  %147 = load i8**, i8*** %8, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = call %struct.name* @delname(%struct.name* %146, i8* %148)
  store %struct.name* %149, %struct.name** %9, align 8
  br label %150

150:                                              ; preds = %145
  %151 = load i8**, i8*** %8, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i32 1
  store i8** %152, i8*** %8, align 8
  br label %141

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %129
  %155 = load %struct.name*, %struct.name** %9, align 8
  %156 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 4
  store %struct.name* %155, %struct.name** %156, align 8
  br label %159

157:                                              ; preds = %124, %117
  %158 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 4
  store %struct.name* null, %struct.name** %158, align 8
  br label %159

159:                                              ; preds = %157, %154
  %160 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 3
  store i32* null, i32** %160, align 8
  %161 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 2
  store i32* null, i32** %161, align 8
  %162 = call i32 @value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %163 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 1
  store i32 %162, i32* %163, align 8
  %164 = load %struct.message*, %struct.message** %4, align 8
  %165 = call i8* @hfield(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), %struct.message* %164)
  %166 = call i8* @skin(i8* %165)
  %167 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 0
  store i8* %166, i8** %167, align 8
  %168 = call i32 @mail1(%struct.header* %10, i32 1)
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %159, %15
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @touch(%struct.message*) #1

declare dso_local i8* @skin(i8*) #1

declare dso_local i8* @hfield(i8*, %struct.message*) #1

declare dso_local i8* @nameof(%struct.message*, i32) #1

declare dso_local %struct.name* @extract(i8*, i32) #1

declare dso_local %struct.name* @elide(%struct.name*) #1

declare dso_local %struct.name* @delname(%struct.name*, i8*) #1

declare dso_local %struct.name* @cat(%struct.name*, %struct.name*) #1

declare dso_local i32* @reedit(i32*) #1

declare dso_local i32 @value(i8*) #1

declare dso_local i32 @mail1(%struct.header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
