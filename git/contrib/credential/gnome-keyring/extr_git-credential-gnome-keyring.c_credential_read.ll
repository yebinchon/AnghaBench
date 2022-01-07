; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_credential_read.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_credential_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i8*, i8*, i8*, i32, i8*, i8* }

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid credential line: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.credential*)* @credential_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @credential_read(%struct.credential* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  %8 = call i8* @gnome_keyring_memory_alloc(i32 1024)
  store i8* %8, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %139, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @stdin, align 4
  %12 = call i64 @fgets(i8* %10, i32 1024, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %140

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %27, %19, %14
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %140

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 61)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @gnome_keyring_memory_free(i8* %44)
  store i32 -1, i32* %2, align 4
  br label %143

46:                                               ; preds = %36
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  store i8 0, i8* %47, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = load %struct.credential*, %struct.credential** %3, align 8
  %54 = getelementptr inbounds %struct.credential, %struct.credential* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @g_free(i8* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @g_strdup(i8* %57)
  %59 = load %struct.credential*, %struct.credential** %3, align 8
  %60 = getelementptr inbounds %struct.credential, %struct.credential* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  br label %139

61:                                               ; preds = %46
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %61
  %66 = load %struct.credential*, %struct.credential** %3, align 8
  %67 = getelementptr inbounds %struct.credential, %struct.credential* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @g_free(i8* %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @g_strdup(i8* %70)
  %72 = load %struct.credential*, %struct.credential** %3, align 8
  %73 = getelementptr inbounds %struct.credential, %struct.credential* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.credential*, %struct.credential** %3, align 8
  %75 = getelementptr inbounds %struct.credential, %struct.credential* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @strrchr(i8* %76, i8 signext 58)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %65
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  store i8 0, i8* %81, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @atoi(i8* %83)
  %85 = load %struct.credential*, %struct.credential** %3, align 8
  %86 = getelementptr inbounds %struct.credential, %struct.credential* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %65
  br label %138

88:                                               ; preds = %61
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %88
  %93 = load %struct.credential*, %struct.credential** %3, align 8
  %94 = getelementptr inbounds %struct.credential, %struct.credential* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @g_free(i8* %95)
  %97 = load i8*, i8** %7, align 8
  %98 = call i8* @g_strdup(i8* %97)
  %99 = load %struct.credential*, %struct.credential** %3, align 8
  %100 = getelementptr inbounds %struct.credential, %struct.credential* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %137

101:                                              ; preds = %88
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %101
  %106 = load %struct.credential*, %struct.credential** %3, align 8
  %107 = getelementptr inbounds %struct.credential, %struct.credential* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @g_free(i8* %108)
  %110 = load i8*, i8** %7, align 8
  %111 = call i8* @g_strdup(i8* %110)
  %112 = load %struct.credential*, %struct.credential** %3, align 8
  %113 = getelementptr inbounds %struct.credential, %struct.credential* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %136

114:                                              ; preds = %101
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %135, label %118

118:                                              ; preds = %114
  %119 = load %struct.credential*, %struct.credential** %3, align 8
  %120 = getelementptr inbounds %struct.credential, %struct.credential* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @gnome_keyring_memory_free(i8* %121)
  %123 = load i8*, i8** %7, align 8
  %124 = call i8* @gnome_keyring_memory_strdup(i8* %123)
  %125 = load %struct.credential*, %struct.credential** %3, align 8
  %126 = getelementptr inbounds %struct.credential, %struct.credential* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %131, %118
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  store i8 0, i8* %132, align 1
  br label %127

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %114
  br label %136

136:                                              ; preds = %135, %105
  br label %137

137:                                              ; preds = %136, %92
  br label %138

138:                                              ; preds = %137, %87
  br label %139

139:                                              ; preds = %138, %52
  br label %9

140:                                              ; preds = %35, %9
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @gnome_keyring_memory_free(i8* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %41
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i8* @gnome_keyring_memory_alloc(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @g_warning(i8*, i8*) #1

declare dso_local i32 @gnome_keyring_memory_free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @gnome_keyring_memory_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
