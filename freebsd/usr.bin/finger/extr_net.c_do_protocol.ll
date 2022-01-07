; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_net.c_do_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_net.c_do_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i32, i32, i32 }
%struct.iovec = type { i8*, i32 }
%struct.msghdr = type { i64, i64, i64, i64, %struct.iovec*, i32, i8* }

@do_protocol.slash_w = internal global [4 x i8] c"/W \00", align 1
@do_protocol.neteol = internal global [3 x i8] c"\0D\0A\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"socket(%d, %d, %d)\00", align 1
@lflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@OUTPUT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\0A\0A Output truncated at %d bytes...\0A\00", align 1
@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"reading from network\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.addrinfo*)* @do_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_protocol(i8* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.iovec], align 16
  %13 = alloca %struct.msghdr, align 8
  store i8* %0, i8** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  %14 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @socket(i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  store i32 -1, i32* %3, align 4
  br label %195

37:                                               ; preds = %2
  %38 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 6
  store i8* %41, i8** %42, align 8
  %43 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 0
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  store %struct.iovec* %47, %struct.iovec** %48, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* @lflag, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @do_protocol.slash_w, i64 0, i64 0), i8** %59, align 16
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 %61
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 1
  store i32 3, i32* %64, align 8
  br label %65

65:                                               ; preds = %55, %37
  %66 = load i8*, i8** %4, align 8
  %67 = call i8* @strdup(i8* %66)
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 16
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 %75
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 8
  %79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.iovec, %struct.iovec* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_protocol.neteol, i64 0, i64 0), i8** %82, align 16
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 %84
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 0, i32 1
  store i32 2, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @connect(i32 %88, i64 %91, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %65
  %98 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @close(i32 %99)
  store i32 -1, i32* %3, align 4
  br label %195

101:                                              ; preds = %65
  %102 = load i32, i32* %8, align 4
  %103 = call i64 @sendmsg(i32 %102, %struct.msghdr* %13, i32 0)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @close(i32 %107)
  store i32 -1, i32* %3, align 4
  br label %195

109:                                              ; preds = %101
  store i32 0, i32* %11, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32* @fdopen(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %111, i32** %9, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %194

113:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %179, %157, %134, %113
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @getwc(i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* @EOF, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %180

119:                                              ; preds = %114
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* @OUTPUT_MAX, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %180

128:                                              ; preds = %119
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 13
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %132, 13
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %114

135:                                              ; preds = %131
  store i32 10, i32* %10, align 4
  store i32 13, i32* %11, align 4
  br label %159

136:                                              ; preds = %128
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @iswprint(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @iswspace(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, 127
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, 64
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %144, %140, %136
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 13
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 10
  br i1 %154, label %155, label %157

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %11, align 4
  br label %158

157:                                              ; preds = %152
  store i32 10, i32* %11, align 4
  br label %114

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %158, %135
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @putwchar(i32 %160)
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 10
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = call i32 @putchar(i8 signext 92)
  %171 = call i32 @putchar(i8 signext 10)
  store i32 13, i32* %11, align 4
  br label %172

172:                                              ; preds = %169, %164, %159
  %173 = load i32, i32* %11, align 4
  %174 = icmp eq i32 %173, 10
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %11, align 4
  %177 = icmp eq i32 %176, 13
  br i1 %177, label %178, label %179

178:                                              ; preds = %175, %172
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %178, %175
  br label %114

180:                                              ; preds = %124, %114
  %181 = load i32*, i32** %9, align 8
  %182 = call i64 @ferror(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %180
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 10
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = call i32 @putchar(i8 signext 10)
  br label %191

191:                                              ; preds = %189, %186
  %192 = load i32*, i32** %9, align 8
  %193 = call i32 @fclose(i32* %192)
  br label %194

194:                                              ; preds = %191, %109
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %194, %105, %97, %26
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @connect(i32, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @getwc(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @iswprint(i32) #1

declare dso_local i32 @iswspace(i32) #1

declare dso_local i32 @putwchar(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
