; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i64, i64, i64, i64, i64, i32, i64*, i64*, i64, i32, i32 }

@DIGEST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EVP_get_digestbyname(\22%s\22) failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"EVP_MD_CTX_create(3) failed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"EVP_DigestInit_ex(3) failed\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"number of bytes hashed is larger than file size\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"EVP_DigestFinal_ex(3) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.executable*)* @digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digest(%struct.executable* %0) #0 {
  %2 = alloca %struct.executable*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.executable* %0, %struct.executable** %2, align 8
  %8 = load i32, i32* @DIGEST, align 4
  %9 = call i32* @EVP_get_digestbyname(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @ERR_print_errors_fp(i32 %13)
  %15 = load i32, i32* @DIGEST, align 4
  %16 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @ERR_print_errors_fp(i32 %22)
  %24 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @EVP_DigestInit_ex(i32* %26, i32* %27, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @ERR_print_errors_fp(i32 %32)
  %34 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.executable*, %struct.executable** %2, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.executable*, %struct.executable** %2, align 8
  %39 = getelementptr inbounds %struct.executable, %struct.executable* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @digest_range(%struct.executable* %36, i32* %37, i64 0, i64 %40)
  %42 = load %struct.executable*, %struct.executable** %2, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.executable*, %struct.executable** %2, align 8
  %45 = getelementptr inbounds %struct.executable, %struct.executable* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.executable*, %struct.executable** %2, align 8
  %48 = getelementptr inbounds %struct.executable, %struct.executable* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = load %struct.executable*, %struct.executable** %2, align 8
  %52 = getelementptr inbounds %struct.executable, %struct.executable* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.executable*, %struct.executable** %2, align 8
  %55 = getelementptr inbounds %struct.executable, %struct.executable* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.executable*, %struct.executable** %2, align 8
  %58 = getelementptr inbounds %struct.executable, %struct.executable* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %56, %59
  %61 = sub i64 %53, %60
  %62 = call i32 @digest_range(%struct.executable* %42, i32* %43, i64 %50, i64 %61)
  %63 = load %struct.executable*, %struct.executable** %2, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.executable*, %struct.executable** %2, align 8
  %66 = getelementptr inbounds %struct.executable, %struct.executable* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.executable*, %struct.executable** %2, align 8
  %69 = getelementptr inbounds %struct.executable, %struct.executable* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %67, %70
  %72 = load %struct.executable*, %struct.executable** %2, align 8
  %73 = getelementptr inbounds %struct.executable, %struct.executable* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.executable*, %struct.executable** %2, align 8
  %76 = getelementptr inbounds %struct.executable, %struct.executable* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.executable*, %struct.executable** %2, align 8
  %79 = getelementptr inbounds %struct.executable, %struct.executable* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  %82 = sub i64 %74, %81
  %83 = call i32 @digest_range(%struct.executable* %63, i32* %64, i64 %71, i64 %82)
  %84 = load %struct.executable*, %struct.executable** %2, align 8
  %85 = getelementptr inbounds %struct.executable, %struct.executable* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %120, %35
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.executable*, %struct.executable** %2, align 8
  %90 = getelementptr inbounds %struct.executable, %struct.executable* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %87
  %94 = load %struct.executable*, %struct.executable** %2, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.executable*, %struct.executable** %2, align 8
  %97 = getelementptr inbounds %struct.executable, %struct.executable* %96, i32 0, i32 6
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.executable*, %struct.executable** %2, align 8
  %104 = getelementptr inbounds %struct.executable, %struct.executable* %103, i32 0, i32 7
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @digest_range(%struct.executable* %94, i32* %95, i64 %102, i64 %109)
  %111 = load %struct.executable*, %struct.executable** %2, align 8
  %112 = getelementptr inbounds %struct.executable, %struct.executable* %111, i32 0, i32 7
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %93
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %87

123:                                              ; preds = %87
  %124 = load i64, i64* %5, align 8
  %125 = load %struct.executable*, %struct.executable** %2, align 8
  %126 = getelementptr inbounds %struct.executable, %struct.executable* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = icmp ugt i64 %124, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %123
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.executable*, %struct.executable** %2, align 8
  %134 = getelementptr inbounds %struct.executable, %struct.executable* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %132, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %131
  %138 = load %struct.executable*, %struct.executable** %2, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = load i64, i64* %5, align 8
  %141 = load %struct.executable*, %struct.executable** %2, align 8
  %142 = getelementptr inbounds %struct.executable, %struct.executable* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.executable*, %struct.executable** %2, align 8
  %145 = call i64 @signature_size(%struct.executable* %144)
  %146 = load i64, i64* %5, align 8
  %147 = add i64 %145, %146
  %148 = sub i64 %143, %147
  %149 = call i32 @digest_range(%struct.executable* %138, i32* %139, i64 %140, i64 %148)
  br label %150

150:                                              ; preds = %137, %131
  %151 = load i32*, i32** %3, align 8
  %152 = load %struct.executable*, %struct.executable** %2, align 8
  %153 = getelementptr inbounds %struct.executable, %struct.executable* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.executable*, %struct.executable** %2, align 8
  %156 = getelementptr inbounds %struct.executable, %struct.executable* %155, i32 0, i32 9
  %157 = call i32 @EVP_DigestFinal_ex(i32* %151, i32 %154, i32* %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %150
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 @ERR_print_errors_fp(i32 %161)
  %163 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %160, %150
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @EVP_MD_CTX_destroy(i32* %165)
  ret void
}

declare dso_local i32* @EVP_get_digestbyname(i32) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @digest_range(%struct.executable*, i32*, i64, i64) #1

declare dso_local i64 @signature_size(%struct.executable*) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
